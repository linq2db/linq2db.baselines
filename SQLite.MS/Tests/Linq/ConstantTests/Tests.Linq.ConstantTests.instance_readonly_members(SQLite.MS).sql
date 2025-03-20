BeforeExecute
-- SQLite.MS SQLite
DECLARE @innerClass_Id  -- Int32
SET     @innerClass_Id = 1
DECLARE @innerClass_InitOnlyId  -- Int32
SET     @innerClass_InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @innerClass_Id AND [e].[Id] = @innerClass_InitOnlyId

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
DECLARE @innerClass_Id  -- Int32
SET     @innerClass_Id = 1
DECLARE @innerClass_InitOnlyId  -- Int32
SET     @innerClass_InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @innerClass_Id AND [e].[Id] = @innerClass_InitOnlyId

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

