#!/bin/bash

#flags=("-O1" "-O1 -march=native" "-O1 -march=native -ffast-math" "-O1 -march=native -fno-math-errno"
#"-O2" "-O2 -march=native" "-O2 -march=native -ffast-math" "-O2 -march=native -fno-math-errno"
#"-O3" "-O3 -march=native" "-O3 -march=native -ffast-math" "-O3 -march=native -fno-math-errno")

flags=('-O2' '-O2 -march=native' '-O2 -march=native -ffast-math -fno-math-errno')

# Compile and run for every flags combinations
for i in "${!flags[@]}"; do	
	CFLAGS=${flags[i]} meson setup v1.$i &&
	cd v1.$i &&
	ninja &&
	./headless > ../v1."$i".txt &&
	cd .. ;
done



# Lets clean all the mess
for i in "${!flags[@]}"; do	
	rm -rf v1."$i";	
done 



# TODO: Ademas, para cada compilacion, probamos distintos casos: (buscar parametros que cumplan esto)
# Miel
# Humo
# Agua
 





