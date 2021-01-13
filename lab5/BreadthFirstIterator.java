import java.util.*;

public class BreadthFirstIterator<T> implements Iterator<T> {
    private Set<Integer> visited = new HashSet();
    private Queue<Integer> queue = new LinkedList();
    private Graph<Integer> graph;
    private int target;

    public BreadthFirstIterator(Graph<Integer> g, Integer starting, int ending) {
        if(g.isStartingExist(starting)) {
            this.graph = g;
            this.queue.add(starting);
            this.visited.add(starting);
            this.target = ending;
        }else{
            throw new IllegalArgumentException();
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean hasNext() {
        return !this.queue.isEmpty();
    }

    @Override
    public T next() {
        if(!hasNext())
            throw new NoSuchElementException();
        //removes from front of queue
        Integer next = queue.remove();
        for (Integer neighbor : this.graph.getNeighbors(next)) {
            if (!this.visited.contains(neighbor)) {
                this.queue.add(neighbor);
                this.visited.add(neighbor);
            }
        }
        System.out.println(next);
        if (target == next) {
            System.out.print("Found target = ");
            System.out.println(target);
            queue.clear();
            return null;
        }
        return (T) next;
    }

    public static void main(String[] args) {
        Graph<Integer> graph = new Graph<>();
        graph.addEdge(1,2);
        graph.addEdge(1,3);
        graph.addEdge(2,4);
        graph.addEdge(4,1);
        graph.addEdge(4,5);
        graph.addEdge(5,6);
        graph.addEdge(5,7);

       BreadthFirstIterator<Integer> bfs = new BreadthFirstIterator<>(graph,1, 7);
        while (bfs.hasNext()){
            bfs.next();
//            System.out.println(bfs.next());
        }
    }
}
