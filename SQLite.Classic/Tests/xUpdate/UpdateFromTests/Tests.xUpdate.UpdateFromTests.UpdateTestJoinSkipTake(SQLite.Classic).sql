﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

UPDATE
	[UpdatedEntities]
SET
	[Value1] = ([UpdatedEntities].[Value1] * [t].[Value1]) * @int1,
	[Value2] = ([UpdatedEntities].[Value2] * [t].[Value2]) * @int2,
	[Value3] = ([UpdatedEntities].[Value3] * [t].[Value3]) * @int3
FROM
	[NewEntities] [t]
WHERE
	[t].[id] <> @someId AND [t].[id] = [UpdatedEntities].[id]
ORDER BY
	[UpdatedEntities].[id]
LIMIT @take OFFSET @skip

BeforeExecute
--  SQLite.Classic SQLite

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

