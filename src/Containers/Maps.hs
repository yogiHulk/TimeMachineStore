module Containers.Maps where

import qualified Data.Map as M

insert k v = M.alter (\_ -> Just v) k

delete k = M.alter (const Nothing) k

adjust f = M.alter (\(Just v) -> Just $ f v)
