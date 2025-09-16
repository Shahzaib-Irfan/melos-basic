import 'package:flutter_test/flutter_test.dart';

import 'package:data_layer/data_layer.dart';

void main() {
  group('DataServiceLayer', () {
    test('fetchData returns a list of data', () {
      final dataService = DataServiceLayer();
      final data = dataService.fetchData();
      expect(data, isA<List<String>>());
      expect(data.length, 3);
      expect(data, containsAll(['Data1', 'Data2', 'Data3']));
    });
  });
}
