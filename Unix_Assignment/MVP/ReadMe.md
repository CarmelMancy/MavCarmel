Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ cat > trainees
Mala
Kavitha
Sindhu
Ram
Ragu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ cat trainees
Mala
Kavitha
Sindhu
Ram
Ragu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ mv trainees maverick.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ ls
maverick.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ dir
maverick.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ sort maverick.txt
Kavitha
Mala
Ragu
Ram
Sindhu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ head -3 maverick.txt
Mala
Kavitha
Sindhu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ tail -2 maverick.txt
Ram
Ragu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ cat maverick | wc
cat: maverick: No such file or directory
      0       0       0

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ cat maverick.txt|wc
      5       5      29

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ nl maverick.txt
     1  Mala
     2  Kavitha
     3  Sindhu
     4  Ram
     5  Ragu

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$ ls -l
total 1
-rw-r--r-- 1 Admin 197121 29 Jan  6 14:53 maverick.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Unix_Assignment/MVP (main)
$
