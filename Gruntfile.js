/*global module:false*/

var path = require('path')
var assert = require('assert')

module.exports = function(grunt) {

  var pdir = 'projects'

  /*
   * Returns the existing projects count.
   */
  var count = function count () {
    return grunt.file.expand({
      filter: 'isDirectory'
    }, pdir + '/*').length
  }

  /*
   * Deletes an existing project.
   */
  var deleteProject = function deleteProject (name) {
    assert(name, 'Can\'t delete a project without a project name.')
    var project = path.join(pdir, name)
    assert(grunt.file.exists(project), 'Can\'t delete project "' + name + '" because it doesn\'n exist. ')
    grunt.file.delete(project)
  }

  /*
   * Creates the scaffolding for a new project.
   */
  var createProject = function createProject (name) {
    name = name || 'untitled_' + (count() + 1)

    var project = path.join(pdir, name)
    var features = path.join(project, 'features')
    var steps = path.join(features, 'step_definitions')

    grunt.file.mkdir(steps)

    grunt.file.write(path.join(project, name + '.rb'), '# ' + name)
    grunt.file.write(path.join(features, 'first.feature'), '# ' + name + '\'s first feature\n\nFeature:')
    grunt.file.write(path.join(steps, name + '_steps.rb'), '# ' + name + ' step definitions' )
  }

  /*
   * Default task.
   */
  grunt.registerTask('project', 'Creates the scaffolding for a simple project.', function project (name) {
    var isDeleting = grunt.option('delete')
    var name = name || grunt.option('name')

    if (isDeleting) {
      deleteProject(name)
      grunt.log.ok()
      return
    }

    createProject(name)
    grunt.log.ok()

  })

  grunt.registerTask('default', ['project'])
};
