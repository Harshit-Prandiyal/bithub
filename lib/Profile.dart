class Profile {
  double cgpa_sem;
  String email;
  String name;
  int total_ques;
  int today_ques = 0;
  String LeetCodeUrl;
  Profile(
      {required this.cgpa_sem,
      required this.name,
      required this.email,
      required this.total_ques,
      required this.LeetCodeUrl});
}
