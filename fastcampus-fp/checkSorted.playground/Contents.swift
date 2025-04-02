class List<T> {
  let value: T          // 현재 노드의 값
  let next: List<T>?    // 다음 노드의 값
  
  init(value: T, next: List<T>?) {
    self.value = value
    self.next = next
  }
}

func isSorted<T>(list: List<T>, order: (T, T) -> Bool) -> Bool {
    // 마지막 노드라면 정렬 체크 완료! 비교할 다음 노드가 없으므로 true 반환
    guard let next = list.next else { return true }
    
    // 현재 & 다음 비교 결과 && 다음 노드 정렬 체크 실행 및 결과 확인
    return order(list.value, next.value) && isSorted(list: next, order: order)
}
