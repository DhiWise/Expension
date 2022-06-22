import 'package:flutterexpension/core/app_export.dart';
import 'package:flutterexpension/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';

class InitialBindings extends Bindings {
  var supabaseUrl = 'https://zpuqgknbqknpjofibaga.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpwdXFna25icWtucGpvZmliYWdhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTU4OTk3MDQsImV4cCI6MTk3MTQ3NTcwNH0.u4fcs2wghih-cHCmiDsRiItdsUUHdCSs9JctygQOVHE';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
