-- Access.Jet.Odbc AccessODBC
DECLARE @Value5 Int -- Int32
SET     @Value5 = 11
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @Value5 Int -- Int32
SET     @Value5 = 12
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

