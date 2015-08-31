'use strict';

var gulp = require('gulp');
var duration = require('gulp-duration');
var sass = require('gulp-sass');
var postcss = require('gulp-postcss');
var autoprefixer = require('autoprefixer-core')({browsers: 'last 2 versions'});

function style() {
	return gulp
		.src('sass/*.sass')
		.pipe(sass().on('error', sass.logError))
		.pipe(postcss([autoprefixer]))
		.pipe(duration('sass + postcss'))
		.pipe(gulp.dest('gulp-css'));
}

gulp.task('default', style);
