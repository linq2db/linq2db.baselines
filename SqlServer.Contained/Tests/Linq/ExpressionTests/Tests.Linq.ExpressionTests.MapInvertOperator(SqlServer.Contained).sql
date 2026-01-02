-- SqlServer.Contained SqlServer.2019
DECLARE @addMask Int -- Int32
SET     @addMask = 3
DECLARE @removeMask Int -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto]
SET
	[Value] = [WarehouseTableDto].[Value] | @addMask & (~@removeMask)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[WarehouseTableDto] [t1]

