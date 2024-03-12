### Latihan Mandiri: Eksplorasi Mekanika Pergerakan

#### Controls:
- left: **`Left, A`**
- right: **`Right, D`**
- jump: **`Space, W, Up`**
- crouch: **`S, Ctrl, C, Down`**
- double jump: **`jump x2`**
- dashing: **`left x2, right x2`**

#### Double jump
<p>Menggunakan counter untuk mengetahui sedang pada loncatan keberapa. Ketika dibawah max-nya yaitu 2 maka masih bisa loncat, tetapi jika >=2 maka tidak bisa loncat 
lagi. Jika pemain berada di lantai maka counter akan direset ke 0.</p>

#### Dashing
<p>Menggunakan counter juga seperti double jump yang juga perlu untuk cek posisi counter-nya. Bedanya adalah perlu variabel dashing supaya tahu jika sedang dash 
karena button-nya overlap dengan movement. Untuk loop pertama, jika pemain pencet sekali button, maka counter akan naik 1. Jika setelah timeout yang ditentukan 
pemain tidak memencet button-nya lagi maka counter akan direset. Jika counter sudah sesuai dengan nilai yang diinginkan maka variabel dashing akan diset true dan
velocity pada bidang X dinaikkan. Setelah timeout singkat, kecepatan akan kembali seperti sebelumnya yaitu 400 (karena terdapat velocity.x = 0 setiap get_input dan 
kecepatan movement 400). Lalu buat kode serupa untuk arah sebaliknya supaya dash-nya terhitung sendiri-sendiri untuk setiap arah.</p>

#### Crouching
<p>Mengganti animation player ke "crouch" dengan cara play animation tersebut, melakukan velocity.y += 5 supaya tidak sama dengan kondisi idle dan terasa lebih 
berat, dan velocity.x /= 2 untuk mengurangi kecepatan movement.</p>

#### Referensi:
- https://www.reddit.com/r/godot/comments/lx1eol/need_help_with_double_jump_code/
- https://forum.godotengine.org/t/is-on-floor-not-working-properly/18735
- https://www.youtube.com/watch?v=SN9sOBr3Mp4
- https://www.youtube.com/watch?v=uUTEeriHd_w
- https://www.makeuseof.com/2d-animation-godot-using-animatedsprite/
- https://godotforums.org/d/20957-double-tap-press-to-dash-help
- https://docs.godotengine.org/en/3.6/tutorials/2d/2d_sprite_animation.html
- https://docs.godotengine.org/en/3.5/classes/class_animatedsprite.html

### Latihan Mandiri: Membuat dan Menambah Variasi Aset

#### Membuat minimal 1 (satu) objek baru di dalam permainan yang dilengkapi dengan animasi menggunakan spritesheet selain yang disediakan tutorial. Silakan cari spritesheet animasi di beberapa koleksi aset gratis seperti Kenney.
<p>Menggunakan sprite zombie dari Tutorial 3 untuk objeknya lalu membuat animasinya dengan spritesheet.</p>

#### Membuat minimal 1 (satu) audio untuk efek suara (SFX) dan memasukkannya ke dalam permainan. Kamu dapat membuatnya sendiri atau mencari dari koleksi aset gratis.
<p>Menggunakan Bite dari RPG Essentials SFX untuk efek suara pada saat Player (Zombie) collide dengan T5Player.</p>

#### Membuat minimal 1 (satu) musik latar (background music) dan memasukkannya ke dalam permainan. Kamu dapat membuatnya sendiri atau mencari dari koleksi aset gratis.
<p>Menggunakan Battle1 dari Action RPG Music untuk sebagai musik latar.</p>

#### Implementasikan interaksi antara objek baru tersebut dengan objek yang dikendalikan pemain. Misalnya, pemain dapat menciptakan atau menghilangkan objek baru tersebut ketika menekan suatu tombol atau tabrakan dengan objek lain di dunia permainan.
<p>Pemain (T5Player) akan menghilang jika collide dengan Zombie (Player).</p>

#### Implementasikan audio feedback dari interaksi antara objek baru dengan objek pemain. Misalnya, muncul efek suara ketika pemain tabrakan dengan objek baru.
<p>Ketika Pemain (T5Player) collide dengan Zombie (Player), Zombie akan memutar efek suara Bite.</p>

#### Implementasi sistem audio yang relatif terhadap posisi objek. Misalnya, musik latar akan semakin terdengar samar ketika pemain semakin jauh dari posisi awal level.
<p>Node BGM dari latihan tutorial menggunakan AudioStreamPlayer2D dan diletakkan di bagian kiri stage. Jadi ketika pemain bergerak maka suaranya akan berubah.</p>

#### Referensi:
- https://csui-game-development.github.io/tutorials/tutorial-5/
- https://docs.godotengine.org/en/3.5/classes/class_kinematicbody2d.html

#### Asset:
- https://www.kenney.nl/assets/platformer-pack-redux
- https://escalonamusic.itch.io/action-rpg-music-free
- https://leohpaz.itch.io/rpg-essentials-sfx-free
