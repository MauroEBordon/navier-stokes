project('navier_stokes', 'c', default_options: [ 'warning_level=2' ])
cc = meson.get_compiler('c')

#Fijarse agregar que si es clang tal cosa, si es gcc otra cosa

headless = executable('headless',
    [ 'headless.c', 'solver.c' ]
)

gl_dep = cc.find_library('GL', required: false)
glu_dep = cc.find_library('GLU', required: false)
glut_dep = cc.find_library('glut', required: false)


#demo = executable('demo',
#    [ 'demo.c', 'solver.c' ],
#    dependencies: [ gl_dep, glu_dep, glut_dep ]
#)

