gulp = require('gulp')
$ = require('gulp-load-plugins')(lazy: true)
browserSync = require('browser-sync')

onError = (error) ->
	$.notify.onError('ERROR: <%- error.plugin %>') error
	$.util.beep()
	$.util.log '======= ERROR. ========\n'
	$.util.log error

gulp.task 'jade-watch', ->
	return gulp.src(['src/jade/**/*.jade','!src/jade/layouts/**/*.jade','!src/jade/includes/**/*.jade','!src/jade/modules/**/*.jade', '!src/jade/about/**/*.jade', '!src/jade/home/**/*.jade', '!src/jade/practices/**/*.jade', '!src/jade/team/**/*.jade', '!src/jade/news/**/*.jade'])
		.pipe $.plumber(errorHandler: onError)
		.pipe $.accord 'jade',
			pretty: true
			basedir : './src/jade/'
		.pipe gulp.dest('app')

gulp.task('jade', ['jade-watch'], browserSync.reload);
