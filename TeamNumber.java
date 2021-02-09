class TeamNumber {
    private class BinaryIndexedTree {
        int[] ft;
        BinaryIndexedTree(int n) {
            ft = new int[n + 1];
        }
        int rsq(int r) {
            int sum = 0;
            for(; r > 0; r -= (r & (-r))) {
                sum += ft[r];
            }
            return sum;
        }
        void update(int k, int v) {
            for(; k < ft.length; k += (k & (-k))) {
                ft[k] += v;
            }
        }
    }
    public int numTeams(int[] rating) {
        int cnt = 0;
        int maxR = 0;
        for(int r : rating) {
            maxR = Math.max(maxR, r);
        }
        cnt += solve(rating, maxR);
        reverse(rating);
        cnt += solve(rating, maxR);
        return cnt;
    }
    private int solve(int[] rating, int n) {
        BinaryIndexedTree bit1 = new BinaryIndexedTree(n);
        BinaryIndexedTree bit2 = new BinaryIndexedTree(n);

        int sum = 0;
        for(int i = 0; i < rating.length; i++) {
            sum += bit1.rsq(rating[i] - 1);
            bit1.update(rating[i], bit2.rsq(rating[i] - 1));
            bit2.update(rating[i], 1);
        }
        return sum;
    }
    private void reverse(int[] rating) {
        int i = 0, j = rating.length - 1;
        while(i < j) {
            int temp = rating[i];
            rating[i] = rating[j];
            rating[j] = temp;
            i++;
            j--;
        }
    }
}