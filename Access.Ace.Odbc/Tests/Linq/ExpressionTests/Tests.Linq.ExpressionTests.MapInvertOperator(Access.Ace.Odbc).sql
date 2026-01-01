-- Access.Ace.Odbc AccessODBC
DECLARE @addMask Int -- Int32
SET     @addMask = 3
DECLARE @removeMask Int -- Int32
SET     @removeMask = 12

UPDATE
	[WarehouseTableDto] [t1]
SET
	[t1].[Value] = ([t1].[Value] BOR ?) BAND (-1 - ?)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[WarehouseTableDto] [t1]

