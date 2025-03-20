BeforeExecute
-- SQLite.Classic SQLite
DECLARE @InnerClassNonReadonly_Id  -- Int32
SET     @InnerClassNonReadonly_Id = 1
DECLARE @InnerClassNonReadonly_InitOnlyId  -- Int32
SET     @InnerClassNonReadonly_InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @InnerClassNonReadonly_Id AND [e].[Id] = @InnerClassNonReadonly_InitOnlyId

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @InnerClassNonReadonly_Id  -- Int32
SET     @InnerClassNonReadonly_Id = 1
DECLARE @InnerClassNonReadonly_InitOnlyId  -- Int32
SET     @InnerClassNonReadonly_InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @InnerClassNonReadonly_Id AND [e].[Id] = @InnerClassNonReadonly_InitOnlyId

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

