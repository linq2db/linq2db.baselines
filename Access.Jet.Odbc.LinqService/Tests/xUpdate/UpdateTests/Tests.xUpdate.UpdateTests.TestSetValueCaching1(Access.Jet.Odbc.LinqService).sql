BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value1] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value1] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

