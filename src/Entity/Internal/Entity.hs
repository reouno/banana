module Entity.Internal.Entity where


class (EntityIdentifier i, EntityValue a) => IsEntity (d i a) where
  entityId :: d i a -> i

class (Eq i, Ord i, Show i) =>
      EntityIdentifier i


instance EntityIdentifier Int

class (Eq a, Show a) =>
      EntityValue a
