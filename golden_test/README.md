# Golden tests
Golden tests, also called screenshot tests, let's you write tests to easily find UI regressions. It
compares the UI to saved goldens screenshots, and if there is a pixel difference the tests will
fail. It gives us confidence that code changes does not cause UI regressions.

## Updating goldens
An expected change to the UI will also cause the golden tests to fail. You will then need to update
the goldens by running the following command on your macOS machine:
```bash
flutter test golden_test --update-goldens
```

Due to slight [differences](https://github.com/flutter/flutter/issues/36667#issuecomment-521335243)
in rendering across platforms, mostly around text, the tests will only be run on a macOS machine
on Github Actions. This means that if you update the tests on a Linux or Windows machine the golden
tests will not pass on Github Actions. Instead you are recommended to download the goldens directly
from the failed Github Actions job, and use those inside of your branch.