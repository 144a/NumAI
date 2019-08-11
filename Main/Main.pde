// Input Layer
Neuron[] in = new Neuron[784];

// 1st neuron layer
Neuron[] firstLayer = new Neuron[16];

// 2nd neuron layer
Neuron[] secondLayer = new Neuron[16];

// Output Layer
Neuron[] out = new Neuron[10];

// Tells it to look for text file
boolean loadData = false;

// Tells it whether to attempt to train the network
boolean isTraining = true;

public void setup() {
  // Recontructs neural network at the time of exit from the last time the program was correctly closed
  // Only Runs if loadData is true
  if(loadData == true) {
    
  } else {
    // Gives random weights and biases 
    firstLayer = randomNeurons(firstLayer.length, 784);
    secondLayer = randomNeurons(secondLayer.length, 16);
    out = randomNeurons(firstLayer.length, 16);
  }
  
}

public Neuron[] randomNeurons(int inputlength, int numOfWeights) {
  Neuron[] ret = new Neuron[inputlength];
  for(int i = 0; i < inputlength; i++) {
    ret[i] = new Neuron(randomWeights(numOfWeights), 0);
  }
  return ret;
}

public double[] randomWeights(int size) {
  double[] ret = new double[size];
  for(int i = 0; i < size; i++){
    ret[size] = random(-1, 1);
  }
  return ret;
}


public void draw() {
  if(isTraining) {
    
  } else {
    
  }
   
}
