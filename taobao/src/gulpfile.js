var gulp=require('gulp');//引入gulp插件
var html=require('gulp-minify-html');//引入html压缩
var sass=require('gulp-sass');//引入sass插件
var css=require('gulp-minify-css');//引入css压缩
var connect=require('gulp-connect');//引入自动刷新
var jshint=require('gulp-jshint');//引入语法错误提示
var concat=require('gulp-concat');//合并
var uglify=require('gulp-uglify');//压缩插件
var rename=require('gulp-rename');//重命名
var imagemin=require('gulp-imagemin');//图片压缩

//cd C:\wamp\www\taobao\src  进入project目录

//1.复制html
gulp.task('copyhtml',function () {
    gulp.src('*.html')//引入文件的路径
        .pipe(gulp.dest('../dist/'));//pipe:管道(链式)输出/gulp.dest('输出目录'):输出
});

//2.压缩html
gulp.task('uglifyhtml',function () {
    gulp.src('html/*.html')//引入源文件
        .pipe(html())
        .pipe(gulp.dest('../dist/html/'));
});

//监听源html文件
gulp.task('watchhtml',function () {
    gulp.watch('html/!*.html',function () {
        gulp.run('uglifyhtml');
    })

});

//sass
gulp.task('sass',function () {
    gulp.src('scss/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('./css/'));
});

//监听scss文件
gulp.task('watchsass',function () {
    gulp.watch('scss/*.scss',function () {
       gulp.run('sass') ;
    })
});

//压缩css文件
gulp.task('uglifycss',function () {
    gulp.src('css/*.css')
        .pipe(css())
        .pipe(gulp.dest('../dist/css/'));
});
//监听源css文件
gulp.task('watchcss',function () {
    gulp.watch('css/*.css',function () {
        gulp.run('uglifycss');
    })
});


//5.页面自刷新
gulp.task('connect',function () {
    connect.server({
        port:8888,
        livereload:true
    });
});

gulp.task('connecthtml',function () {
    gulp.src(['html/!*.html','css/!*.css'])
        .pipe(connect.reload());
});

gulp.task('connectwatch',function () {
    gulp.watch(['html/!*.html','css/!*.css'],['connecthtml']);
});

gulp.task('imagemin',function () {
    gulp.src('img/*.png')
        .pipe(imagemin())
        .pipe(gulp.dest('../dist/img'));
});

gulp.task('default',['watchhtml','watchsass','watchcss','connect','connectwatch']);