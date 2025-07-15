BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value2 Int -- Int32
SET     @Value2 = 11
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value2] = @Value2
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value2 Int -- Int32
SET     @Value2 = 12
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value2] = @Value2
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

