module React.Basic.Native.PropTypes where

class AutoEnum a where
  auto :: a

class NormalEnum a where
  normal :: a

class CenterEnum a where
  center :: a

class VisibilityEnum a where
  visible :: a
  hidden :: a

class NoneEnum a where
  none :: a
