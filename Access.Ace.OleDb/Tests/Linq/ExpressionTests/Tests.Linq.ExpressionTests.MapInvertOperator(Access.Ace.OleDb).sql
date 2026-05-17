-- Access.Ace.OleDb AccessOleDb
DECLARE @addMask Integer -- Int32
SET     @addMask = 3
DECLARE @removeMask Integer -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto] [t1]
SET
	[t1].[Value] = ([t1].[Value] BOR @addMask) BAND (-1 - @removeMask)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[WarehouseTableDto] [t1]

