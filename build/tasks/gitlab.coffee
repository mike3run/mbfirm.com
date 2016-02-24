gulp = require('gulp')
runSequence = require('run-sequence').use(gulp)

gulp.task 'gitlab', (cb) ->
	runSequence 'coffee',
		'styl',
		'bower',
		'jade',
		'font',
		'static',
		'img',
		'svg',
		->
