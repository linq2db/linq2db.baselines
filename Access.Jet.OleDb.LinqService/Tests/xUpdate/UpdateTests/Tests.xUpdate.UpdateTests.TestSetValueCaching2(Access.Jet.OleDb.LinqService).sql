BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value2] = @Value2
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value2] = @Value2
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

