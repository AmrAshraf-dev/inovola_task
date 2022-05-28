class MyModel {
  int? id;
  String? title;
  String? interest;
  int? price;
  String? date;
  String? address;
  String? trainerName;
  String? trainerInfo;
  String? occasionDetail;
  String? error;

  MyModel(
      {this.id,
      this.title,
      this.interest,
      this.price,
      this.address,
      this.date,
      this.trainerName,
      this.trainerInfo,
      this.occasionDetail});
  MyModel.withError(String errorMessage) {
    error = errorMessage;
  }
  MyModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    interest = json["interest"];
    price = json["price"];
    date = json["date"];
    address = json["address"];
    trainerName = json["trainerName"];
    trainerInfo = json["trainerInfo"];
    occasionDetail = json["occasionDetail"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['interest'] = interest;
    data['price'] = price;
    data['date'] = date;
    data['address'] = address;
    data['trainerName'] = trainerName;
    data['trainerInfo'] = trainerInfo;
    data['occasionDetail'] = occasionDetail;
    return data;
  }
}
