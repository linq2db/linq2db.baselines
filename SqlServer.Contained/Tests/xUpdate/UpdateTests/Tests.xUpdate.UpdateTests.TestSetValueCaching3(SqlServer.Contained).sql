-- SqlServer.Contained SqlServer.2019
DECLARE @Value3 Int -- Int32
SET     @Value3 = 7
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value3] = @Value3
WHERE
	[UpdateSetTest].[Id] = @id

-- SqlServer.Contained SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value3]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

-- SqlServer.Contained SqlServer.2019
DECLARE @Value3 Int -- Int32
SET     @Value3 = 8
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value3] = @Value3
WHERE
	[UpdateSetTest].[Id] = @id

-- SqlServer.Contained SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value3]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

