BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

