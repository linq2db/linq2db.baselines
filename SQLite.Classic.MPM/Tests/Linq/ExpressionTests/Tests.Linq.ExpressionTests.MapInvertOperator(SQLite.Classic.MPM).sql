-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @addMask Integer -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto]
SET
	[Value] = [WarehouseTableDto].[Value] | @addMask & ~@removeMask

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[WarehouseTableDto] [t1]
LIMIT 2

