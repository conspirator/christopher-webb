path = require 'path'

lrSnippet = require('grunt-contrib-livereload/lib/utils').livereloadSnippet

folderMount = (connect, point) ->
  connect.static path.resolve(point)

module.exports = (grunt) ->

  @initConfig
    pkg: grunt.file.readJSON 'package.json'

    connect:
      server:
        options:
          port: 3000
          base: 'public'
      livereload:
        options:
          middleware: (connect, options) ->
            [lrSnippet, folderMount(connect, '.')]


    regarde:
      js:
        files: 'public/js/app.js',
        tasks: ['concat', 'uglify', 'livereload']
      css:
        files: 'src/stylus/*.styl',
        tasks: ['stylus','livereload']


    stylus:
      compile:
        options:
          paths: ['src/stylus/']
          import: ['nib']
        files:
          'public/css/app.css': ['src/stylus/app.styl']


    concat:
      options:
        separator: "\n"
      dist:
        src: ['public/js/vendor/jquery.min.js', 'public/js/vendor/jquery.backstretch.js','public/js/app.js'],
        dest: 'public/js/dist/app.js'


    uglify:
      my_target:
        files:
          'public/js/dist/app.min.js': ['public/js/dist/app.js']


  @loadNpmTasks "grunt-contrib-stylus"
  @loadNpmTasks "grunt-contrib-concat"
  @loadNpmTasks "grunt-contrib-uglify"
  @loadNpmTasks "grunt-contrib-connect"
  @loadNpmTasks "grunt-contrib-livereload"
  @loadNpmTasks "grunt-regarde"


  @registerTask 'default', ['livereload-start', 'connect:server', 'regarde']