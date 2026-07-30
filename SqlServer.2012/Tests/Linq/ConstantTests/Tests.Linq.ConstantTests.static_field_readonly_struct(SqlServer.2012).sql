-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Int -- Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InnerNonReadonlyStructure

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Int -- Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InnerNonReadonlyStructure

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

