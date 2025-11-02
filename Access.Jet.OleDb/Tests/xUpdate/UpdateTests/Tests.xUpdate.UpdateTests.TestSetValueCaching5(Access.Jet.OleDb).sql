-- Access.Jet.OleDb AccessOleDb
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = @Value5
WHERE
	[t1].[Id] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = @Value5
WHERE
	[t1].[Id] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

