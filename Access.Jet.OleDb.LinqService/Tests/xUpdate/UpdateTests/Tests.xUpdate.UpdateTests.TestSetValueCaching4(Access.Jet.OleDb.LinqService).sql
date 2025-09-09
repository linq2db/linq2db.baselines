BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Value4 Guid
SET     @Value4 = {guid {bc7b663d-0fde-4327-8f92-5d8cc3a11d11}}
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value4] = @Value4
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Value4 Guid
SET     @Value4 = {guid {a948600d-de21-4f74-8ac2-9516b287076e}}
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value4] = @Value4
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

