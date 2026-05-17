-- Sybase.Managed Sybase
DECLARE @addMask Integer -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto]
SET
	[Value] = [WarehouseTableDto].[Value] | @addMask & ~@removeMask

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[WarehouseTableDto] [t1]

