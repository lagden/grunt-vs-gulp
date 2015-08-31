'use strict'

module.exports = (grunt) ->

  require('time-grunt') grunt
  autoprefixer = require('autoprefixer-core')(browsers: 'last 2 versions')

  grunt.task.loadNpmTasks('grunt-sass')
  grunt.task.loadNpmTasks('grunt-postcss')

  grunt.initConfig
    sass:
      vs:
        options:
          outputStyle: 'expanded'
          trace: false
          precision: 3
          sourceMap: false
        files: [
          expand: true
          flatten: false
          cwd: 'sass'
          src: ['*.sass']
          dest: 'grunt-css'
          ext: '.css'
        ]

    postcss:
      vs:
        options:
          processors: [autoprefixer]
        files: [
          expand: true
          flatten: false
          cwd: 'grunt-css'
          src: ['*.css']
          dest: 'grunt-css'
          ext: '.css'
        ]

  grunt.registerTask 'default', [
    'sass'
    'postcss'
  ]

  return
