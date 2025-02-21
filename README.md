#### Apa saja pesan log yang dicetak pada panel Output?
Platform initialized  
  

#### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?  
Reached objective!

#### Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?  
Ya, ketika collision dari BlueShip menyentuh collision dari ObjectiveArea, muncul log "Reached objective!

#### Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?  
Menampilkan gambar atau _texture_ untuk node tersebut

#### Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?  
RigidBody2D: Dapat dipengaruhi oleh physics body lainnya. Tidak dapat digerakkan secara langsung, harus melalui pengaruh _physics_
StaticBody2D: Tidak akan bergerak kecuali digerakkan manual. Tidak akan bergerak jika diberi influence oleh physics body lain. Tidak akan bergerak meskipun ada instansi static body 1 yang digerakkan ke instansi lainnya.

#### Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?  
Tidak ada yang berubah, rate seberapa cepat jatuhnya sama. Tinggi pantulan yang terjadi kepada platform juga sama. Hal ini karena sebenarnya tidak ada gaya yang diterapkan ke rigid body ini. Perubahan mass akan terasa jika kita menambahkan script yang menerapkan gaya ke rigid body

#### Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?  
BlueShip jatuh melalui platform.

#### Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?  
Visualisasi berubah. Position akan memengaruhi posisi koordinat (x,y) dari BlueShip. Rotation memengaruhi kemiringan. Scale memengaruhi ukuran.

#### Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?  
Nilai atribut position mereka relatif terhadap posisi node PlatformBlue
