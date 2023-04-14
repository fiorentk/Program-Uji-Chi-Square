#-----------------PROGRAM CHISQUARE-----------------#

#-----------------HALAMAN AWAL-----------------#
require(tcltk)
cover<-tktoplevel(bg="skyblue1")
tktitle(cover)<-"COVER AWAL UJI CHI-SQUARE"

teks1<-tkfont.create(family="arial",size=25,weight="bold")
teks2<-tkfont.create(family="courier",size=15,weight="bold")
teks3<-tkfont.create(family="courier",size=15)
teks4<-tkfont.create(family="arial",size=15,weight="bold")

frame1<-tkframe(cover,relief="groove",borderwidth=20,bg="skyblue1")
frame2<-tkframe(cover,relief="groove",borderwidth=10,bg="skyblue1")
frame3<-tkframe(cover,relief="groove",borderwidth=10,bg="skyblue1")
frame4<-tkframe(cover,relief="groove",borderwidth=10,bg="skyblue1")
frame5<-tkframe(cover,relief="groove",borderwidth=10,bg="skyblue1")
frame6<-tkframe(cover,relief="groove",borderwidth=10,bg="skyblue1")

tkpack(tklabel(frame1,text="UJI CHI-SQUARE",font=teks1,bg="skyblue1"))
tkpack(frame1,fill="both")
tkpack(tklabel(frame2,text="KELOMPOK 4",font=teks2,bg="skyblue1"))
tkpack(tklabel(frame2,text="Fitri Laila Ramadhani  \t(081811833010)",font=teks2,bg="skyblue1"))
tkpack(tklabel(frame2,text="Yeni Rahmawati         \t(081811833015)",font=teks2,bg="skyblue1"))
tkpack(tklabel(frame2,text="Fiorentika Devasha R.  \t(081811833044)",font=teks2,bg="skyblue1"))
tkpack(tklabel(frame2,text="Gita Putri Rosanti     \t(081811833053)",font=teks2,bg="skyblue1"))
tkpack(frame2,fill="both")
tkpack(tklabel(frame3,text="Dosen Pembina",font=teks3,bg="skyblue1"))
tkpack(frame3,fill="both")
tkpack(tklabel(frame3,text="Dr. Nur Chamidah, S.Si.,M.Si.",font=teks3,bg="skyblue1"))
tkpack(tklabel(frame3,text="Dr. Toha Saifudin, S.Si,M.Si.",font=teks3,bg="skyblue1"))
tkpack(frame3,fill="both")
tkpack(tklabel(frame4,text="Program Studi S1 Statistika
Fakultas Sains dan Teknologi
Universitas Airlangga
2020",font=teks4,bg="skyblue1"))
tkpack(frame4,fill="both")
tkpack(tklabel(frame5,text="Klik 'MULAI' untuk memasuki program",font=teks3,bg="skyblue1"))
tkpack(frame5,fill="both")

#-----------------MENU UTAMA-----------------#
mulai<-function()
{
tkdestroy(cover)
require(tcltk)
covermenu<-tktoplevel(bg="skyblue1")
tktitle(covermenu)<-"MENU UTAMA UJI CHI-SQUARE"
tekss1<-tkfont.create(family="sans",size=17,weight="bold")
tekss2<-tkfont.create(family="courier",size=15)

frame7<-tkframe(covermenu,relief="groove",borderwidth=10,bg="skyblue1")
frame8<-tkframe(covermenu,relief="groove",borderwidth=10,bg="skyblue1")

tkpack(tklabel(frame7,text=" ",bg="skyblue1"))
tkpack(tklabel(frame7,text="SELAMAT DATANG DI PROGRAM",font=tekss1,bg="skyblue1"))
tkpack(tklabel(frame7,text="UJI CHI-SQUARE",font=tekss1,bg="skyblue1"))
tkpack(tklabel(frame7,text=" ",bg="skyblue1"))
tkpack(frame7,fill="both")
tkpack(tklabel(frame8,text=" ",bg="skyblue1"))
tkpack(tklabel(frame8,text="Pilih menu yang tersedia di atas sesuai dengan uji yang anda diinginkan",font=tekss2,bg="skyblue1"))
tkpack(tklabel(frame8,text="Pilih menu 'PANDUAN PENGGUNAAN' untuk mengetahui cara menggunakan program",font=tekss2,bg="skyblue1"))
tkpack(tklabel(frame8,text="Pilih menu 'MATERI UJI' untuk mengetahui penjelasan tentang uji-uji yang ada di program",font=tekss2,bg="skyblue1"))
tkpack(tklabel(frame8,text=" ",bg="skyblue1"))
tkpack(frame8,fill="both")

tutupmenu<-function()
{
tkdestroy(covermenu)
tkmessageBox(message="TERIMAKASIH TELAH MENGGUNAKAN PROGRAM INI :)")
}
keluarmenu<-tkbutton(frame8,text="TUTUP PROGRAM",font=tekss2,bg="lightblue",command=tutupmenu)
tkpack(frame8,fill="both")
tkpack(keluarmenu,padx=8,pady=8,side="bottom")
tkpack(frame8,padx=8,pady=8,side="bottom")

#-----------------------PANDUAN PENGGUNAAN-----------------------#
panduanpenggunaan=function()
{
require(tcltk)
cover=tktoplevel(bg="skyblue1")
tktitle(cover)="PANDUAN PENGGUNAAN"
teks2=tkfont.create(family="sans",size=22,weight="bold")
teks2=tkfont.create(family="times",size=14)
tkgrid(tklabel(cover,text="PROSEDUR PENGGUNAAN PROGRAM   ",font=teks1,bg="skyblue1"),sticky='w')
tkgrid(tklabel(cover,text="  ",font=teks2,bg="skyblue1"))
tkgrid(tklabel(cover,text="1. Klik menu 'MATERI UJI'                \t: Untuk mengetahui penjealsan tentang uji independensi, uji kebaikan suai, dan uji proporsi",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="2. Klik menu 'PANDUAN PENGGUNAAN'	  \t: Untuk mengetahui cara menjalankan program",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="3. Klik menu 'UJI INDEPENDENSI'          \t: Untuk menguji kebebasan variabel",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik submenu 'INPUT DATA'           \t: Untuk memasukkan data secara manual",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik submenu 'IMPORT DATA'          \t: Untuk memasukkan file data spss",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="4. Klik menu 'UJI KEBAIKAN SUAI'         \t: Untuk apakah suatu populasi mempunyai distribusi teoritis tertentu",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik submenu 'INPUT DATA'	        \t: Untuk memasukkan data secara manual",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik subsubmenu 'BINOM'             \t: Untuk menguji distribusi Binomial",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik subsubmenu 'SERARAM DISKRET'   \t: Untuk menguji distribusi Seragam Disket",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik subsubmenu 'HIPERGEOMETRIK'    \t: Untuk menguji distribusi Hipergeometrik",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="5. Klik menu 'UJI PROPORSI'              \t: Untuk menguji apakah suatu populasi mempunyai proporsi sukses yang sama",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik submenu 'INPUT DATA'           \t: Untuk memasukkan data secara manual",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   - Klik submenu 'IMPORT DATA'          \t: Untuk memasukkan file data spss",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="6. Jika memilih INPUT DATA pastikan mengisi secara lengkap HIPOTESIS, NILAI ALFA, dan BANYAK DATA",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   Klik Lanjut untuk menginput data tabel",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="7. Jika memilih IMPORT DATA pastikan mengisi secara lengkap HIPOTESIS dan NILAI ALFA",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="   Klik IMPORT untuk mengambil data dari komputer",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="8. Klik Analisa dan hasil pengujian akan keluar.",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  ",font=teks2,bg="skyblue1"),sticky="w")
tomboltutup=tkbutton(cover,text="TUTUP",command=function()tkdestroy(cover))
tkgrid(tomboltutup)
}

#------------------------------------------------MATERI UJI---------------------------------------------------------------#
MateriUji<-function()
{
require(tcltk)
cover<-tktoplevel(bg="skyblue1")
tktitle(cover)<-"MATERI UJI CHI-SQUARE"

teks1=tkfont.create(family="sans",size=16,weight="bold")
teks2=tkfont.create(family="times",size=12)
teks3=tkfont.create(family="sans",size=14,weight="bold")

tkgrid(tklabel(cover,text="UJI INDEPENDENSI",font=teks1,bg="skyblue1"))
tkgrid(tklabel(cover,text=" PENGERTIAN ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  Analisis uji yang digunakan untuk memeriksa kebebasan/independensi sehingga ",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  dapat disimpulkan kedua variabel saling berpengaruh/tidak. ",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" DAERAH KRITIS ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  H0 ditolak jika chisqhitung>chisqtabel ",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" STATITIK UJI ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  chisqhitung= (sum(Oij-Eij)^2)/Eij        Oij= Data Pengamatan    Eij=Frekuensi Harapan",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="UJI KEBAIKAN SUAI",font=teks1,bg="skyblue1"))
tkgrid(tklabel(cover,text=" PENGERTIAN ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  Analisis uji yang digunakan untuk menguji apakah suatu populasi mempunyai distribusi teoritis tertentu",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" DAERAH KRITIS ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  H0 ditolak jika chisqhitung>chisqtabel ",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" STATITIK UJI ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  chisqhitung= (sum(Oi-Ei)^2)/Ei        Oi= Data Pengamatan    Ei=Frekuensi Harapan",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="UJI PROPORSI",font=teks1,bg="skyblue1"))
tkgrid(tklabel(cover,text=" PENGERTIAN ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  Analisis uji yang digunakan untuk menguji apakah suatu populasi mempunyai proporsi sukses yang sama",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" DAERAH KRITIS ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  H0 ditolak jika chisqhitung>chisqtabel ",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text=" STATITIK UJI ",font=teks3,bg="skyblue1"),sticky="w")
tkgrid(tklabel(cover,text="  chisqhitung= (sum(Oij-Eij)^2)/Eij        Oij= Data Pengamatan    Eij=Frekuensi Harapan",font=teks2,bg="skyblue1"),sticky="w")

tomboltutup=tkbutton(cover,text="TUTUP",command=function()tkdestroy(cover))
tkgrid(tomboltutup)
}

#-----------------------------------UJI PROPORSI(INPUT DATA)-------------------------------------#

ujiproporsi=function()
{
require(tcltk)
proporsi=tktoplevel(bg="skyblue1")
tktitle(proporsi)="UJI PROPORSI(INPUT DATA)"
teks1=tkfont.create(family="times",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(proporsi,text="UJI PROPORSI (INPUT DATA)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(proporsi,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(proporsi,width="100",textvariable=hip0)
tkgrid(tklabel(proporsi,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(proporsi,width="100",textvariable=hip1)
tkgrid(tklabel(proporsi,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(proporsi,text=" ",bg="skyblue1"))


nd1<-tclVar(" ")
ndata1<-tkentry(proporsi,width="10",textvariable=nd1)
tkgrid(tklabel(proporsi,text="Banyak Kategorik (Kolom)  :",bg="skyblue1"))
tkgrid(ndata1)

alf<-tclVar(" ")
alfa<-tkentry(proporsi,width="10",textvariable=alf)
tkgrid(tklabel(proporsi,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(proporsi,text=" ",bg="skyblue1"))

#LANJUT#	 
isi<-function()
{
banyakbaris<-2
nrow<-as.numeric(banyakbaris)
banyakkolom<-(tclvalue(nd1))
ncol<-as.numeric(banyakkolom)
allfa<-as.numeric(tclvalue(alf))
if(banyakkolom==" " && allfa=="0" )tkmessageBox(message="Anda belum mengisi Alfa dan kolom",icon="warning")
else if(banyakkolom==" " && allfa!="0")tkmessageBox(message="Anda belum mengisi banyak kolom",icon="warning")
else if(banyakkolom!=" " && allfa=="0")tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{
tkgrid(tklabel(proporsi,text="Input Data :",bg="skyblue1"))
tclRequire("Tktable")
wadah<-matrix(0,nrow,ncol)
isitabel<- tclArray()
for (i in 1:nrow)
{
for (j in 1:ncol)
{
isitabel[[i,j]]=wadah[i,j]
}
}
tabel<-tkwidget(proporsi,"table",variable=isitabel,rows=(nrow+1),cols=(ncol+1),titlerows=1,titlecols=1,selectmode="extended",colwidth=25,background="skyblue1")
tkconfigure(tabel,selectmode="extended",rowseparator="\"\n\"",colseparator="\"\t\"")
tkgrid(tabel)

#ANALISA#
uji.proporsi <- function()
{
nbaris=nrow
nkolom=ncol
Oij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Oij[i,j]=as.numeric(isitabel[[i,j]])
}
}	
Eij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Eij[i,j]=sum(Oij[i,])*sum(Oij[,j])/sum(Oij)
}
}
allpha<-as.numeric(tclvalue(alf))
xhitt=sum((Oij-Eij)^2/Eij)
xhit=round(xhitt,3)
v=(nkolom-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval

require(tcltk)
hasil<-tktoplevel(bg="skyblue1")
tktitle(hasil)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="times",size=14,weight="bold")
teks2<-tkfont.create(family="sans",size=14)
				
tkgrid(tklabel(hasil,text="HIPOTESIS ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="DAERAH KRITIS ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="H0 ditolak jika chisqhit > chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="HASIL UJI ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil,text=paste("X^2 alpha ; v  = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="atau",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")	
tkgrid(tklabel(hasil,text="KEPUTUSAN",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,") dan"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
tomboltutup=tkbutton(hasil,text="TUTUP",command=function()tkdestroy(hasil))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(proporsi,text="ANALISA",command=uji.proporsi,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.lanjut<-tkbutton(proporsi,text="LANJUT",command=isi,bg="skyblue1")	
tkgrid(tombol.lanjut)
}		

#-------------------------------------UJI PROPORSI(IMPORT DATA SPSS)------------------------------#
ujiproporsi2=function()
{
require(tcltk)
proporsi2=tktoplevel(bg="skyblue1")
tktitle(proporsi2)="UJI PROPORSI (IMPORT DATA)"
teks1=tkfont.create(family="sans",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(proporsi2,text="UJI PROPORSI (IMPORT DATA)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(proporsi2,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(proporsi2,width="100",textvariable=hip0)
tkgrid(tklabel(proporsi2,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(proporsi2,width="100",textvariable=hip1)
tkgrid(tklabel(proporsi2,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(proporsi2,text=" ",bg="skyblue1"))

alf<-tclVar(" ")
alfa<-tkentry(proporsi2,width="10",textvariable=alf)
tkgrid(tklabel(proporsi2,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(proporsi2,text=" ",bg="skyblue1"))

#IMPORT DATA#
spss=function()
{
allfa<-as.numeric(tclvalue(alf))
if(allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{	
require(tcltk)
jendela1=tktoplevel()
tktitle(jendela1)="DATA"
library(foreign)
upload=read.spss(file.choose(),use.value.labels=TRUE,max.value.labels=inf,to.data.frame=TRUE)
data=as.matrix(upload)
nbaris=nrow(data)
nkolom=ncol(data)
for(i in 1:nbaris)
{
for(j in 1:nkolom)
{
matriksdata=as.matrix(data[i,j])
tkgrid(tklabel(jendela1,text=matriksdata))
}
}

tkgrid(tklabel(jendela1,text=" "))

#ANALISA#
uji.proporsi1=function()
{
data2=as.matrix(upload)
Oij=matrix(0,nbaris,nkolom)
for(i in 1:nbaris)
{
for(j in 1:nkolom)
{
Oij[i,j]=as.numeric(data2[[i,j]])
}
}
Eij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Eij[i,j]=sum(Oij[i,])*sum(Oij[,j])/sum(Oij)
}
}
allpha<-as.numeric(tclvalue(alf))
xhitt=sum((Oij-Eij)^2/Eij)
xhit=round(xhitt,3)
v=(nkolom-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval
 
require(tcltk)
hasil1<-tktoplevel(bg="skyblue1")
tktitle(hasil1)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="times",size=14,weight="bold")
teks2<-tkfont.create(family="sans",size=14)
				
tkgrid(tklabel(hasil1,text="HIPOTESIS ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil1,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="DAERAH KRITIS ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="HASIL UJI ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil1,text=paste("X^2 alpha ; v = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="atau",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")	
tkgrid(tklabel(hasil1,text="KEPUTUSAN",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil1,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil1,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
tomboltutup=tkbutton(hasil1,text="TUTUP",command=function()tkdestroy(hasil1))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(proporsi2,text="ANALISA",command=uji.proporsi1,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.import<-tkbutton(proporsi2,text="IMPORT DATA",command=spss,bg="skyblue1")	
tkgrid(tombol.import)
}	

#----------------------------------------------UJI INDEPENDENSI INPUT DATA-----------------------------------------------------------------#
uji1=function()
{
require(tcltk)
independensi1=tktoplevel(bg="skyblue1")
tktitle(independensi1)="UJI INDEPENDENSI (INPUT DATA)"
teks1=tkfont.create(family="times",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(independensi1,text="UJI INDEPENDENSI (INPUT DATA)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(independensi1,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(independensi1,width="100",textvariable=hip0)
tkgrid(tklabel(independensi1,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(independensi1,width="100",textvariable=hip1)
tkgrid(tklabel(independensi1,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(independensi1,text=" ",bg="skyblue1"))

nd1<-tclVar(" ")
ndata1<-tkentry(independensi1,width="10",textvariable=nd1)
tkgrid(tklabel(independensi1,text="Banyak Kategorik (Baris)  :",bg="skyblue1"))
tkgrid(ndata1)

nd2<-tclVar(" ")
ndata2<-tkentry(independensi1,width="10",textvariable=nd2)
tkgrid(tklabel(independensi1,text="Banyak Kategorik (Kolom)  :",bg="skyblue1"))
tkgrid(ndata2)

alf<-tclVar(" ")
alfa<-tkentry(independensi1,width="10",textvariable=alf)
tkgrid(tklabel(independensi1,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(independensi1,text=" ",bg="skyblue1"))

#LANJUT#	 
isi<-function()
{
banyakbaris<-(tclvalue(nd1))
nrow<-as.numeric(banyakbaris)
banyakkolom<-(tclvalue(nd2))
ncol<-as.numeric(banyakkolom)
allfa<-as.numeric(tclvalue(alf))
if(banyakbaris==" " && banyakkolom==" " && allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa dan banyak baris dan kolom",icon="warning")
else if(banyakbaris==" " && banyakkolom!=" " && allfa!=" ")tkmessageBox(message="Anda belum mengisi banyak baris",icon="warning")
else if(banyakbaris!=" " && banyakkolom==" " && allfa!=" ")tkmessageBox(message="Anda belum mengisi banyak kolom",icon="warning")
else if(banyakbaris!=" " && banyakkolom!=" " && allfa==" ")tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{		
tkgrid(tklabel(independensi1,text="Input Data Anda",bg="skyblue1"))
tclRequire("Tktable")
wadah<-matrix(0,nrow,ncol)
isitabel<- tclArray()
for (i in 1:nrow)
{
for (j in 1:ncol)
{
isitabel[[i,j]]=wadah[i,j]
}
}
tabel<-tkwidget(independensi1,"table",variable=isitabel,rows=(nrow+1),cols=(ncol+1),titlerows=1,titlecols=1,selectmode="extended",colwidth=25,background="skyblue1")
tkconfigure(tabel,selectmode="extended",rowseparator="\"\n\"",colseparator="\"\t\"")
tkgrid(tabel)

#ANALISA#
uji.independensi <- function()
{
nbaris=nrow
nkolom=ncol
Oij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Oij[i,j]=as.numeric(isitabel[[i,j]])
}
}
Eij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Eij[i,j]=sum(Oij[i,])*sum(Oij[,j])/sum(Oij)
}
}
allpha<-as.numeric(tclvalue(alf))
xhitt=sum((Oij-Eij)^2/Eij)
xhit=round(xhitt,3)
v=(nbaris-1)*(nkolom-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval

require(tcltk)
hasil<-tktoplevel(bg="skyblue1")
tktitle(hasil)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="times",size=14,weight="bold")
teks2<-tkfont.create(family="sans",size=14)
				
tkgrid(tklabel(hasil,text="HIPOTESIS ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="DAERAH KRITIS ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="HASIL UJI ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil,text=paste("X^2 alpha ; v  = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="atau",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")	
tkgrid(tklabel(hasil,text="KEPUTUSAN",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,") dan"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
tomboltutup=tkbutton(hasil,text="TUTUP",command=function()tkdestroy(hasil))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(independensi1,text="ANALISA",command=uji.independensi,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.lanjut<-tkbutton(independensi1,text="LANJUT",command=isi,bg="skyblue1")	
tkgrid(tombol.lanjut)
}		
#----------------------------------------UJI INDEPENDENSI IMPORT DATA-----------------------------------------------------------------------#
uji2=function()
{
require(tcltk)
independensi3=tktoplevel(bg="skyblue1")
tktitle(independensi3)="UJI INDEPENDENSI (IMPORT DATA)"
teks1=tkfont.create(family="sans",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(independensi3,text="UJI INDEPENDENSI(IMPORT DATA)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(independensi3,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(independensi3,width="100",textvariable=hip0)
tkgrid(tklabel(independensi3,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(independensi3,width="100",textvariable=hip1)
tkgrid(tklabel(independensi3,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(independensi3,text=" ",bg="skyblue1"))

alf<-tclVar(" ")
alfa<-tkentry(independensi3,width="10",textvariable=alf)
tkgrid(tklabel(independensi3,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(independensi3,text=" ",bg="skyblue1"))

#IMPORT DATA#
spss=function()
{
allfa<-as.numeric(tclvalue(alf))
if(allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")

else
{	
require(tcltk)
jendela1=tktoplevel()
tktitle(jendela1)="DATA"
library(foreign)
upload=read.spss(file.choose(),use.value.labels=TRUE,max.value.labels=inf,to.data.frame=TRUE)
data=as.matrix(upload)
nbaris=nrow(data)
nkolom=ncol(data)
for(i in 1:nbaris)
{
for(j in 1:nkolom)
{
matriksdata=as.matrix(data[i,j])
tkgrid(tklabel(jendela1,text=matriksdata))
}
}
tkgrid(tklabel(jendela1,text=" "))

#ANALISA#
uji.independensi1=function()
{
data2=as.matrix(upload)
Oij=matrix(0,nbaris,nkolom)
for(i in 1:nbaris)
{
for(j in 1:nkolom)
{
Oij[i,j]=as.numeric(data2[[i,j]])
}
}
Eij=matrix(0,nbaris,nkolom)
for (i in 1:nbaris)
{
for (j in 1:nkolom)
{
Eij[i,j]=sum(Oij[i,])*sum(Oij[,j])/sum(Oij)
}
}
allpha<-as.numeric(tclvalue(alf))
xhitt=sum((Oij-Eij)^2/Eij)
xhit=round(xhitt,3)
v=(nbaris-1)*(nkolom-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval
 
require(tcltk)
hasil1<-tktoplevel(bg="skyblue1")
tktitle(hasil1)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="times",size=14,weight="bold")
teks2<-tkfont.create(family="sans",size=14)
				
tkgrid(tklabel(hasil1,text="HIPOTESIS ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil1,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="DAERAH KRITIS ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="HASIL UJI ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil1,text=paste("X^2 alpha ; v = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="atau",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")	
tkgrid(tklabel(hasil1,text="KEPUTUSAN",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil1,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil1,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=paste("",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil1,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
tomboltutup=tkbutton(hasil1,text="TUTUP",command=function()tkdestroy(hasil1))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(independensi3,text="ANALISA",command=uji.independensi1,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.import<-tkbutton(independensi3,text="IMPORT DATA",command=spss,bg="skyblue1")	
tkgrid(tombol.import)
}	

#-----------------------------------------UJI KEBAIKAN SUAI INPUT DATA (HIPERGEOMETRIK)----------------------------------------------------------------------#
hipergeo=function()
{ #1#
require(tcltk)
suai1=tktoplevel(bg="skyblue1")
tktitle(suai1)="UJI KEBAIKAN SUAI (HIPERGEOMETRIK)"
teks1=tkfont.create(family="sans",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(suai1,text="UJI KEBAIKAN SUAI (HIPERGEOMETRIK)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(suai1,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(suai1,width="100",textvariable=hip0)
tkgrid(tklabel(suai1,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(suai1,width="100",textvariable=hip1)
tkgrid(tklabel(suai1,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

nd<-tclVar(" ")
ndata<-tkentry(suai1,width="10",textvariable=nd)
tkgrid(tklabel(suai1,text="Banyak Kategorik  :",bg="skyblue1"))
tkgrid(ndata)

alf<-tclVar(" ")
alfa<-tkentry(suai1,width="10",textvariable=alf)
tkgrid(tklabel(suai1,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(suai1,text="PARAMETER",bg="skyblue1"))

N1<-tclVar(" ")
eN<-tkentry(suai1,width="10",textvariable=N1)
tkgrid(tklabel(suai1,text="N  :",bg="skyblue1"))
tkgrid(eN)

n1<-tclVar(" ")
en<-tkentry(suai1,width="10",textvariable=n1)
tkgrid(tklabel(suai1,text="n  :",bg="skyblue1"))
tkgrid(en)

k1<-tclVar(" ")
ka<-tkentry(suai1,width="10",textvariable=k1)
tkgrid(tklabel(suai1,text="k  :",bg="skyblue1"))
tkgrid(ka)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

#LANJUT#	 
isi<-function()
{ #2#
banyakdata=(tclvalue(nd))
n=as.numeric(banyakdata)
allfa=as.numeric(tclvalue(alf))
if(banyakdata==" "&& allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa dan banyak pengamatan",icon="warning")
else if(banyakdata==" " &&  allfa!=" ")tkmessageBox(message="Anda belum mengisi banyak data",icon="warning")
else if(banyakdata!=" " && allfa==" ")tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{  #3#		
tkgrid(tklabel(suai1,text="Input Data Anda",bg="skyblue1"))
tclRequire("Tktable")
wadah=matrix(c("x","f"),1,2,T)
isitabel=tclArray()
for (i in 0:0)
{
for (j in 0:1)
{
isitabel[[i,j]]=(wadah[i+1,j+1])
}
}
tabel<-tkwidget(suai1,"table",variable=isitabel,rows=n+1,cols=2,titlerows=1,selectmode="extended",colwidth=25,background="skyblue1")
tkconfigure(tabel,selectmode="extended",rowseparator="\"\n\"",colseparator="\"\t\"")
tkgrid(tabel)

#ANALISA#
uji.suai=function()
{
ndata=n
data2=matrix(0,ndata,2)
allpha=as.numeric(tclvalue(alf))
parN=as.numeric(tclvalue(N1))
parn=as.numeric(tclvalue(n1))
park=as.numeric(tclvalue(k1))
for(i in 1:ndata)
{
for(j in 1:2)
{
data2[i,j]=as.numeric(isitabel[[i,j-1]])
}
}
Oi=data2[,2]
x=data2[,1]
p=dhyper(x,park,parN-park,parn)
ei=p*sum(Oi)
Ei=as.numeric(ei)
xhitt=sum((Oi-Ei)^2/Ei)
xhit=round(xhitt,3)
v=(n-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval

require(tcltk)
hasil<-tktoplevel(bg="skyblue1")
tktitle(hasil)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="courier",size=14,weight="bold")
teks2<-tkfont.create(family="courier",size=14)
				
tkgrid(tklabel(hasil,text="Hipotesis ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Daerah Krirtis ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Hasil Uji ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil,text=paste("X^2 alpha ; v = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Keputusan",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("jadi,",h11,"(x,",parN,",",parn,",",park,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")

}
else 
{	
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("jadi,",h00,"(x,",parN,",",parn,",",park,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")

}
tomboltutup=tkbutton(hasil,text="TUTUP",command=function()tkdestroy(hasil))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(suai1,text="Analisa",command=uji.suai,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.lanjut<-tkbutton(suai1,text="lanjut",command=isi,bg="skyblue1")	
tkgrid(tombol.lanjut)
}
#-----------------------------------------UJI KEBAIKAN SUAI INPUT DATA (BINOM)----------------------------------------------------------------------#
#UJI KEBAIKAN SUAI INPUT DATA#
binom=function()
{ #1#
require(tcltk)
suai1=tktoplevel(bg="skyblue1")
tktitle(suai1)="UJI KEBAIKAN SUAI (BINOMIAL)"
teks1=tkfont.create(family="sans",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(suai1,text="UJI KEBAIKAN SUAI (BINOMIAL)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(suai1,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(suai1,width="100",textvariable=hip0)
tkgrid(tklabel(suai1,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(suai1,width="100",textvariable=hip1)
tkgrid(tklabel(suai1,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

nd<-tclVar(" ")
ndata<-tkentry(suai1,width="10",textvariable=nd)
tkgrid(tklabel(suai1,text="Banyak Kategorik  :",bg="skyblue1"))
tkgrid(ndata)

alf<-tclVar(" ")
alfa<-tkentry(suai1,width="10",textvariable=alf)
tkgrid(tklabel(suai1,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(suai1,text="PARAMETER",bg="skyblue1"))

n1<-tclVar(" ")
en<-tkentry(suai1,width="10",textvariable=n1)
tkgrid(tklabel(suai1,text="n  :",bg="skyblue1"))
tkgrid(en)

p1<-tclVar(" ")
prob<-tkentry(suai1,width="10",textvariable=p1)
tkgrid(tklabel(suai1,text="p  :",bg="skyblue1"))
tkgrid(prob)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

#LANJUT#	 
isi<-function()
{ #2#
banyakdata=(tclvalue(nd))
n=as.numeric(banyakdata)
allfa=as.numeric(tclvalue(alf))
if(banyakdata==" "&& allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa dan banyak pengamatan",icon="warning")
else if(banyakdata==" " &&  allfa!=" ")tkmessageBox(message="Anda belum mengisi banyak data",icon="warning")
else if(banyakdata!=" " && allfa==" ")tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{  #3#		
tkgrid(tklabel(suai1,text="Input Data Anda",bg="skyblue1"))
tclRequire("Tktable")
wadah=matrix(c("x","f"),1,2,T)
isitabel=tclArray()
for (i in 0:0)
{
for (j in 0:1)
{
isitabel[[i,j]]=(wadah[i+1,j+1])
}
}
tabel<-tkwidget(suai1,"table",variable=isitabel,rows=n+1,cols=2,titlerows=1,selectmode="extended",colwidth=25,background="skyblue1")
tkconfigure(tabel,selectmode="extended",rowseparator="\"\n\"",colseparator="\"\t\"")
tkgrid(tabel)

#ANALISA#
uji.suai=function()
{
ndata=n
data2=matrix(0,ndata,2)
allpha=as.numeric(tclvalue(alf))
parn=as.numeric(tclvalue(n1))
parp=as.numeric(tclvalue(p1))
for(i in 1:ndata)
{
for(j in 1:2)
{
data2[i,j]=as.numeric(isitabel[[i,j-1]])
}
}
Oi=data2[,2]
x=data2[,1]
p=dbinom(x,parn,parp)
ei=p*sum(Oi)
Ei=as.numeric(ei)
xhitt=sum((Oi-Ei)^2/Ei)
xhit=round(xhitt,3)
v=(n-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval

require(tcltk)
hasil<-tktoplevel(bg="skyblue1")
tktitle(hasil)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="courier",size=14,weight="bold")
teks2<-tkfont.create(family="courier",size=14)
				
tkgrid(tklabel(hasil,text="Hipotesis ",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Daerah Krirtis ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Hasil Uji ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil,text=paste("X^2 alpha ; v = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="Keputusan",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("jadi,",h11,"(x,",parn,",",parp,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,") maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("jadi,",h00,"(x,",parn,",",parp,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")

}
tomboltutup=tkbutton(hasil,text="TUTUP",command=function()tkdestroy(hasil))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled")
}
}
tombol.analisa<-tkbutton(suai1,text="Analisa",command=uji.suai,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.lanjut<-tkbutton(suai1,text="lanjut",command=isi,bg="skyblue1")	
tkgrid(tombol.lanjut)
}		

#-----------------------------------------UJI KEBAIKAN SUAI INPUT DATA (SERAGAM)----------------------------------------------------------------------#

seragam=function()
{ #1#
require(tcltk)
suai1=tktoplevel(bg="skyblue1")
tktitle(suai1)="UJI KEBAIKAN SUAI (SERAGAM)"
teks1=tkfont.create(family="sans",size=18,weight="bold")
teks2=tkfont.create(family="times",size=14)

tkgrid(tklabel(suai1,text="UJI KEBAIKAN SUAI (SERAGAM)",font=teks1,bg="skyblue1"))	
tkgrid(tklabel(suai1,text=" ",bg="skyblue1")) 

hip0<-tclVar(" ")
h0<-tkentry(suai1,width="100",textvariable=hip0)
tkgrid(tklabel(suai1,text="H0:",font=teks2,bg="skyblue1"))
tkgrid(h0)

hip1<-tclVar(" ")
h1<-tkentry(suai1,width="100",textvariable=hip1)
tkgrid(tklabel(suai1,text="H1:",font=teks2,bg="skyblue1"))
tkgrid(h1)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

nd<-tclVar(" ")
ndata<-tkentry(suai1,width="10",textvariable=nd)
tkgrid(tklabel(suai1,text="Banyak Populasi  :",bg="skyblue1"))
tkgrid(ndata)

alf<-tclVar(" ")
alfa<-tkentry(suai1,width="10",textvariable=alf)
tkgrid(tklabel(suai1,text="Nilai Alfa  :",bg="skyblue1"))
tkgrid(alfa)

tkgrid(tklabel(suai1,text=" ",bg="skyblue1"))

#LANJUT#	 
isi<-function()
{ #2#
banyakdata=(tclvalue(nd))
n=as.numeric(banyakdata)
allfa=as.numeric(tclvalue(alf))
if(banyakdata==" "&& allfa==" " )tkmessageBox(message="Anda belum mengisi Alfa dan banyak populasi",icon="warning")
else if(banyakdata==" " &&  allfa!=" ")tkmessageBox(message="Anda belum mengisi banyak data",icon="warning")
else if(banyakdata!=" " && allfa==" ")tkmessageBox(message="Anda belum mengisi Alfa",icon="warning")
else
{  #3#		
tkgrid(tklabel(suai1,text="Input Data Anda",bg="skyblue1"))
tclRequire("Tktable")
wadah=matrix(c("Populasi"),1,1,T)
isitabel=tclArray()
for (i in 0:0)
{
for (j in 0:0)
{
isitabel[[i,j]]=(wadah[i+1,j+1])
}
}
tabel<-tkwidget(suai1,"table",variable=isitabel,rows=n+1,cols=1,titlerows=1,selectmode="extended",colwidth=25,background="skyblue1")
tkconfigure(tabel,selectmode="extended",rowseparator="\"\n\"",colseparator="\"\t\"")
tkgrid(tabel)

#ANALISA#
uji.suai=function()
{
ndata=n
data2=matrix(0,ndata,2)
allpha=as.numeric(tclvalue(alf))
for(i in 1:ndata)
{
for(j in 1:1)
{
data2[i,j]=as.numeric(isitabel[[i,j-1]])
}
}
Oi=data2[,1]
p=1/n
Ei=p*sum(Oi)
xhitt=sum((Oi-Ei)^2/Ei)
xhit=round(xhitt,3)
v=(n-1)
xtabb=qchisq(1-allpha,v)
xtab=round(xtabb,3)
pvall=pchisq(xhit,v)
pval=round(pvall,3)
pvalue=1-pval

require(tcltk)
hasil<-tktoplevel(bg="skyblue1")
tktitle(hasil)<-"Hasil Pengujian"
alpha<-as.numeric(tclvalue(alf))

teks1<-tkfont.create(family="times",size=14,weight="bold")
teks2<-tkfont.create(family="sans",size=14)
				
tkgrid(tklabel(hasil,text="HIPOTESIS",font=teks1,bg="skyblue1"),sticky="w")
h00=as.character(tclvalue(hip0))
h11=as.character(tclvalue(hip1))
tkgrid(tklabel(hasil,text=paste("H0 = ",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("H1 = ",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="DAERAH KRITIS ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="H0 ditolak jika chisqhit>chisqtab",font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="HASIL UJI ",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai chisq hitung = ",xhit),font=teks2,bg="skyblue1"),sticky="w")				
tkgrid(tklabel(hasil,text=paste("X^2 alpha ; v = ",xtab),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Nilai P-Value = ",pvalue),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KEPUTUSAN",font=teks1,bg="skyblue1"),sticky="w")
if(xhit>xtab)
{
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") > chisq tabel(",xtab,")"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") < alpha(",allpha,") maka TOLAK H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h11),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
else 
{	
tkgrid(tklabel(hasil,text=paste("Karena chisq hitung(",xhit,") < chisq tabel(",xtab,") "),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("Karena P-Value(",pvalue,") > alpha(",allpha,")maka TERIMA H0"),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text="KESIMPULAN",font=teks1,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=paste("",h00),font=teks2,bg="skyblue1"),sticky="w")
tkgrid(tklabel(hasil,text=" ",font=teks2,bg="skyblue1"),sticky="w")
}
tomboltutup=tkbutton(hasil,text="TUTUP",command=function()tkdestroy(hasil))
tkgrid(tomboltutup)
tkconfigure(teks1,state="disabled") 
}
}
tombol.analisa<-tkbutton(suai1,text="ANALISA",command=uji.suai,bg="skyblue1")
tkgrid(tombol.analisa)
}
tombol.lanjut<-tkbutton(suai1,text="LANJUT",command=isi,bg="skyblue1")	
tkgrid(tombol.lanjut)
}

#-----------------------------------MENU--------------------------------------#

topmenu=tkmenu(covermenu)
menu=tkmenu(covermenu)
tkconfigure(covermenu,menu=topmenu)

menu1=tkmenu(topmenu,tearoff=FALSE)
menu2=tkmenu(topmenu,tearoff=FALSE)
menu3=tkmenu(topmenu,tearoff=FALSE)
menu4=tkmenu(topmenu,tearoff=FALSE)

tkadd(topmenu,"cascade",label="Uji Independensi",menu=menu1)
tkadd(menu1,"command",label="INPUT DATA",command=uji1)
tkadd(menu1,"command",label="IMPORT DATA",command=uji2)

tkadd(topmenu,"cascade",label="Uji Kebaikan Suai",menu=menu2)
tkadd(menu2,"cascade",label="DISTRIBUSI",menu=menu3)
tkadd(menu3,"command",label="HIPERGEOMETRIK",command=hipergeo)
tkadd(menu3,"command",label="BINOMIAL",command=binom)
tkadd(menu3,"command",label="SERAGAM",command=seragam)

tkadd(topmenu,"cascade",label="Uji Proporsi",menu=menu4)
tkadd(menu4,"command",label="INPUT DATA",command=ujiproporsi)
tkadd(menu4,"command",label="IMPORT DATA",command=ujiproporsi2)

tkadd(topmenu,"command",label="Materi Uji",command=MateriUji)
tkadd(topmenu,"command",label="Panduan Penggunaan",command=panduanpenggunaan)
}

tombolmulai<-tkbutton(frame6,text="MULAI",font=teks2,bg="lightblue",command=mulai)
tkpack(tombolmulai,padx=12,pady=12)
tkpack(frame6,padx=12,pady=12)
tkpack(frame6,fill="both")