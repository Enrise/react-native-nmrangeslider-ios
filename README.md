# Native Multi Slider for React Native iOS 

React Native Slider component with two markers based on [NMRangeSlider](https://github.com/mvelikov/NMRangeSlider).

[React-native-multi-slider](https://github.com/JackDanielsAndCode/react-native-multi-slider) 
works in javascript only which creates a noticeable lag when moving a 
slider. Because NMRangeSlider is implemented as a native module there is no lag in this version.

# Installation

```
npm install --save react-native-nmrangeslider-ios
```

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

