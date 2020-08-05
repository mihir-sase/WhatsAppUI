import 'dart:io';
import 'package:cloudinary_client/cloudinary_client.dart';

class Cloudinary {
  static final Cloudinary instance = Cloudinary();

  CloudinaryClient client;

  Cloudinary() {
    client = CloudinaryClient(
      "528278441387843",
      "SNnxcpxPKXJp-yO5wV5TnGVvxNU",
      "dtncwq5o2",
    );
  }

  Future<String> uploadFile(File file) async {
    List<String> fileUrls = await client.uploadImagesStringResp(
      [file.path],
      folder: "sync-test/test1",
    );
    return fileUrls.toList().first;
  }
}