# Native iOS multi slider component for React Native

[![NPM](https://nodei.co/npm-dl/react-native-nmrangeslider-ios.png?months=3)](https://nodei.co/npm/react-native-nmrangeslider-ios/)

Native iOS multi slider component for React Native with two markers based on [NMRangeSlider](https://github.com/mvelikov/NMRangeSlider).

[react-native-multi-slider](https://github.com/JackDanielsAndCode/react-native-multi-slider) 
works in javascript only which creates a noticeable lag when moving a 
slider. Because NMRangeSlider is implemented as a native module there is no lag in this version.

![slider-example](https://cloud.githubusercontent.com/assets/133832/12846584/a28dc36e-cc0d-11e5-9a70-dcc4445e72b6.gif)


# Installation

```
npm install --save react-native-nmrangeslider-ios
```

Follow the [procedure to link the library in XCode](https://facebook.github.io/react-native/docs/linking-libraries-ios.html#manual-linking) 
or run `rnpm link react-native-nmrangeslider-ios` using [rnpm](https://github.com/rnpm/rnpm).

Open your project in XCode if necessary and go into `Libraries > RNNMRangeSlider.xcodeproj > NMRangeSlider` and drag
and drop the "Slider.xcassets" to the Resources folder. In the dialog, do NOT tick "copy files if necessary" because
the files are already part of this project.
Note if you used this library before version 1.3.0, remove the "DefaultTheme7" folder you might have copied.

# Usage example

```
import NMRangeSliderIOS from 'react-native-nmrangeslider-ios';

<NMRangeSliderIOS
  minimumValue={0}
  maximumValue={99}
  minimumRange={5}
  lowerValue={10}
  upperValue={80}
  trackColor={#00ff00}
  onChange={onChangeFunction}
  disabled={false}
  style={{ width: 300, height: 50 }}
/>
```

# Changelog

- 1.3.1 CocoaPod support, #5
- 1.3.0 Changed image assets into xcassets structure
- 1.2.0 Add ability to set trackColor
- 1.1.0 Add ability to disable control
- 1.0.0 Initial release

# License

Copyright 2016 Enrise BV
Licensed under the MIT License.

