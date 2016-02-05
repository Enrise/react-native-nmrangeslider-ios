# Native Multi Slider for React Native iOS 

React Native Slider component with two markers based on [NMRangeSlider](https://github.com/mvelikov/NMRangeSlider).

[React-native-multi-slider](https://github.com/JackDanielsAndCode/react-native-multi-slider) 
works in javascript only which creates a noticeable lag when moving a 
slider. Because NMRangeSlider is implemented as a native module there is no lag in this version.

![slider-example](https://cloud.githubusercontent.com/assets/133832/12846584/a28dc36e-cc0d-11e5-9a70-dcc4445e72b6.gif)


# Installation

```
npm install --save react-native-nmrangeslider-ios
```

Then drag and drop the "DefaultTheme7" folder from `node_modules/react-native-nmrangeslider-ios/` to your
X Code Resource folder. Select "copy files if necessary" and link them to your project.

# Usage example

```
import NMRangeSliderIOS from 'react-native-nmrangeslider-ios';

<NMRangeSliderIOS
  minimumValue={0}
  maximumValue={99}
  lowerValue={10}
  upperValue={80}
  onChange={this.onChangeAge}
  style={{ width: 300, height: 50 }}
/>
```

# License

Copyright 2016 Enrise BV
Licensed under the MIT License.

