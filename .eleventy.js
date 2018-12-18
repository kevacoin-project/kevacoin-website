module.exports = function(eleventyConfig) {
  // Copy the `img/` directory 
  eleventyConfig.addPassthroughCopy("images");
  
  // Copy the `css/fonts/` directory
  // If you use a subdirectory, it’ll copy using the same directory structure.
  eleventyConfig.addPassthroughCopy("css");
  
  return {
    passthroughFileCopy: true
  };
};
