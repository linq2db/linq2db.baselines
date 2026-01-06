-- SqlCe
DECLARE @addMask Int -- Int32
SET     @addMask = 3
DECLARE @removeMask Int -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto]
SET
	[Value] = [WarehouseTableDto].[Value] | @addMask & ~@removeMask

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[WarehouseTableDto] [t1]

