// Add your code here
 Difference(vector<int> a) {
   elements = a;
 }

  void computeDifference() {
    maximumDifference = 0;
    for (int i = 0; i < elements.size(); i++) {
      for (int j = 0; j < elements.size(); j++) {
        if(std::abs(elements[i] - elements[j]) > maximumDifference) {
          maximumDifference = std::abs(elements[i] - elements[j]);
        }
      }
    }
  }
