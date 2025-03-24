﻿BeforeExecute
--  SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InitOnlyId  -- Int32
SET     @InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InitOnlyId

BeforeExecute
--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
--  SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InitOnlyId  -- Int32
SET     @InitOnlyId = 1

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @InitOnlyId

BeforeExecute
--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

