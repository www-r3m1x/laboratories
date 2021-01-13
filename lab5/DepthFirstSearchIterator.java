import java.util.*;

public class DepthFirstSearchIterator<T>  implements Iterator<T> {
    private Set<Integer> visited = new HashSet<>();
    private Stack<Iterator<Integer>> stack = new Stack<>();
    private Graph<Integer> graph;
    private Integer next;
    private int target;

    public DepthFirstSearchIterator(Graph g, Integer starting, Integer ending) {
        if(g.isStartingExist(starting)) {
            this.stack.push(g.getNeighbors(starting).iterator());
            this.graph = g;
            this.next = starting;
            this.target = ending;
        }else{
            throw new IllegalArgumentException("Vertext does not exits");
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean hasNext() {
        return this.next != null;
    }

    @Override
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }

        this.visited.add(this.next);
        System.out.println(this.next);
        if (target == this.next) {
            System.out.print("Found target = ");
            System.out.println(target);
            this.next = null;
            return null;
        }

        this.advance();
        return (T) this.next;
    }

    private void advance() {
        Iterator<Integer> neighbors = this.stack.peek();
        do {
            while (!neighbors.hasNext()) {
                this.stack.pop();
                if (this.stack.isEmpty()) {
                    this.next = null;
                    return;
                }
                neighbors = this.stack.peek();
            }

            this.next = neighbors.next();
        } while (this.visited.contains(this.next));
        this.stack.push(this.graph.getNeighbors(this.next).iterator());
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


        DepthFirstSearchIterator<Integer> dfs = new DepthFirstSearchIterator<>(graph,1, 4);
        while (dfs.hasNext()){
            dfs.next();
        }
    }
}
