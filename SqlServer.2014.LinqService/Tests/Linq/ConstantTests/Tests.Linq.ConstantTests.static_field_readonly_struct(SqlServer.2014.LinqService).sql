BeforeExecute
-- SqlServer.2014 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @p

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SqlServer.2014 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @p

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

