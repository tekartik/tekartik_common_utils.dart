bool _isRelease;

// http://stackoverflow.com/questions/29592826/detect-during-runtime-whether-the-application-is-in-release-mode-or-not

// Check whether running in debug or release mode
bool get isRelease {
  if (_isRelease == null) {
    _isRelease = true;
    assert(() {
      _isRelease = false;
      return true;
    });
  }
  return _isRelease;
}

bool get isDebug => !isRelease;