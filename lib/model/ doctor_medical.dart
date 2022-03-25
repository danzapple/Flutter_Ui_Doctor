class DoctorMedical {
  String name;
  String profesi;
  String description;
  String openDays;
  String openTime;
  String hargaKonsultasi;
  String imageAsset;

  DoctorMedical({
    required this.name,
    required this.profesi,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.hargaKonsultasi,
    required this.imageAsset,
  });
}

var doctorMedicalList = [
  DoctorMedical(
    name: 'Dr. A.R.V.I.S',
    profesi: 'Dokter Penyakit Dalam',
    description:
        'Menangani  masalah imun, penyakit jantung, diabetes, hipertensi, penyakit pencernaan, penyakit pernapasan, dan penyakit ginjal',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    hargaKonsultasi: 'Rp 25000',
    imageAsset: 'assets/doctor.png',
  ),
  DoctorMedical(
    name: 'Dr. Rina',
    profesi: 'Dokter Anak',
    description:
        'Menangani masalah kejiwaan, dokter anak akan bekerja sama dengan psikiatri, atau saat kondisi anak membutuhkan pembedahan, dokter anak akan bekerjasama dengan dokter spesialis bedah anak.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    hargaKonsultasi: 'Rp 20000',
    imageAsset: 'assets/doctor2.png',
  ),
  DoctorMedical(
    name: 'Dr. Ronald',
    profesi: 'Dokter Saraf ',
    description:
        'Menangani pasien stroke, infeksi sistem saraf, tumor yang tidak bisa dioperasi, penyakit autoimun yang menyerang sistem saraf, kejang, gangguan gerakan tubuh, gangguan otot karena kelainan pada saraf, migrain, demensia, dan neuropati perifer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    hargaKonsultasi: 'Free',
    imageAsset: 'assets/doctor3.png',
  ),
  DoctorMedical(
    name: 'Dr. Bonden',
    profesi: 'Dokter Kandungan dan Ginekologi',
    description:
        'Bidang obstetri melayani semua hal seputar kehamilan dan melahirkan, baik yang normal maupun yang bermasalah. Sementara itu, bidang ginekologi melayani keluhan terkait kesehatan reproduksi, misalnya masalah menstruasi dan menopause.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 17:00',
    hargaKonsultasi: 'Rp 3000',
    imageAsset: 'assets/doctor4.png',
  ),
  DoctorMedical(
    name: 'Dr. Supriyadi',
    profesi: 'Dokter spesialis THT',
    description:
        'Masalah kesehatan yang bisa ditangani dokter spesialis THT antara lain adalah radang tenggorokan, radang amandel, sleep apnea, sinusitis, infeksi telinga, hingga tumor di bagian kepala dan leher.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    hargaKonsultasi: 'Free',
    imageAsset: 'assets/doctor5.png',
  ),
  DoctorMedical(
    name: 'Dr. Polin',
    profesi: 'Dokter Spesialis Mata',
    description:
        'Masalah kesehatan mata yang biasa ditangani oleh dokter spesialis mata antara lain adalah masalah penglihatan, gangguan kelopak mata, iritasi mata, kelilipan yang tidak kunjung hilang, atau penyakit mata terkait usia, seperti katarak.',
    openDays: 'Open Saturday - Thursday',
    openTime: '09:00 - 15:30',
    hargaKonsultasi: 'Rp 3000',
    imageAsset: 'assets/doctor.png',
  ),
  DoctorMedical(
    name: 'Dr. Silisa',
    profesi: 'Dokter gigi',
    description:
        'Dokter gigi juga bisa menempuh pendidikan spesialisnya sendiri, di antaranya adalah spesialis bedah mulut, spesialis gigi anak, spesialis ortodonti, spesialis penyakit mulut, dan spesialis prostodonsia (gigi palsu).',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    hargaKonsultasi: 'Rp 20000',
    imageAsset: 'assets/doctor.png',
  ),
  DoctorMedical(
    name: 'Drs. Lisani',
    profesi: 'Psikiater',
    description:
        'masalah kesehatan jiwa yang umumnya ditangani oleh psikiater adalah depresi, gangguan bipolar, skizofrenia, demensia, autisme, masalah kecanduan, dan juga masalah seksual.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 17:00',
    hargaKonsultasi: 'Rp 15000',
    imageAsset: 'assets/doctor.png',
  ),
  DoctorMedical(
    name: 'Dr. Ritana',
    profesi: 'Dokter spesialis bedah',
    description:
        'Beberapa kasus membutuhkan dokter bedah dengan keahlian khusus, misalnya pembedahan jaringan kanker akan dilakukan oleh spesialis bedah onkologi, sementara pembedahan pada tulang akan dilakukan oleh spesialis orthopedi.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    hargaKonsultasi: 'Rp 20000',
    imageAsset: 'assets/doctor.png',
  ),
];
