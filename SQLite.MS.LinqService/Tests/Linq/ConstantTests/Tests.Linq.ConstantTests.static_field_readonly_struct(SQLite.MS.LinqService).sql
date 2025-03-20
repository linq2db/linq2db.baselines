BeforeExecute
-- SQLite.MS SQLite
DECLARE @InnerNonReadonlyStructure_Id  -- Int32
SET     @InnerNonReadonlyStructure_Id = 1
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @InnerNonReadonlyStructure_Id AND [e].[Id] = @p

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InnerNonReadonlyStructure_Id  -- Int32
SET     @InnerNonReadonlyStructure_Id = 1
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @InnerNonReadonlyStructure_Id AND [e].[Id] = @p

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

