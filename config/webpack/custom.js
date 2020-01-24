module.exports = {
  output: {
    filename: (chunkData) => {
      return chunkData.chunk.name === 'bookmarklet' ? '[name].js' : '[name]-[hash].js';
    },
  }
}
