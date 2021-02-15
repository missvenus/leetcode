class MyLinkedList {
    int val;
    MyLinkedList next;
    MyLinkedList head = new MyLinkedList();

    /** Initialize your data structure here. */
    public MyLinkedList() {
        this.val = 0;
        this.next = null;
    }

    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    public int get(int index) {
        int i = 0 ;
        while( i != index){
            head = head.next;
            i++;
        }
        return head.val;
    }

    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    public void addAtHead(int val) {
        MyLinkedList node = new MyLinkedList();
        node.val = val;
        node.next = head;
    }

    /** Append a node of value val to the last element of the linked list. */
    public void addAtTail(int val) {
        MyLinkedList node = new MyLinkedList();
        head.next = node;
        node.val = val;
        node.next = null;
    }

    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    public void addAtIndex(int index, int val) {
        MyLinkedList node = new MyLinkedList();
        int i = 0;
        while( i < index){
            head = head.next;
            i++;
        }
        node.val = val;
        node.next = head.next;
        head.next = node ;
    }

    /** Delete the index-th node in the linked list, if the index is valid. */
    public void deleteAtIndex(int index) {
        int i = 0;
        while( i < index){
            head = head.next;
            i++;
        }
        head.next = head.next.next;
    }
}


// * Your MyLinkedList object will be instantiated and called as such:
  MyLinkedList obj = new MyLinkedList();
  obj.addAtHead(1);
  obj.addAtTail(2);
  obj.addAtIndex(1,2);
  int param_1 = obj.get(1);
  System.out.println(param_1)
  obj.deleteAtIndex(1);
  int param_1 = obj.get(1);
  System.out.println(param_1)