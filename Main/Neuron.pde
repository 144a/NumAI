class Neuron { 
  private double[] weights;
  private double bias;
  private double value;
  
  public Neuron(int numOfweights) {
    weights = new double[numOfweights];
    value = 0;
    bias = 0;
  }
  
  public Neuron(double[] presetWeights) {
    weights = presetWeights;
    value = 0;
    bias = 0;
  }
  public Neuron(double presetValue) {
    weights = new double[0];
    value = presetValue;
    bias = 0;
  }
  
  public double getValue() {
    return value;
  }
  
  public double calculateValue(Neuron[] input) {
    double ret = 0;
    // Add and mutiply weights by input values
    for(int i = 0; i < input.length; i++) {
      ret += (input[i]).getValue() * weights[i];
    }
    
    // Add bias to total sum
    ret += bias;
    
    // Run through Sigmoid Function to limit output to between -1 and 1
    ret = 1 / (1 + pow(2.18281828, (float)(-1 * ret)));
    
    return ret;
  }
  
}
