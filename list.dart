//1- Function that take element less than 5
List LessThanFive(List list) => list.where((element) => element < 5).toList();

//2-taking the elements that are common between 2 lists
List getCommonElements(List list1, List list2) {
  return List.from(Set.from(list1).intersection(Set.from(list2)));
}

//3- take even elements
List getEvenElements(List list) =>
    list.where((element) => element % 2 == 0).toList();

//4- first and last elements of list
List firstLast(List list) => [list.first, list.last];

void main() {
  var lista = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var result = LessThanFive(lista);

  print(result);

  var list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  print(getCommonElements(list1, list2));

  var list3 = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  print(getEvenElements(list3));

  var list4 = [5, 10, 15, 20, 25];

  print(firstLast(list4));
}
