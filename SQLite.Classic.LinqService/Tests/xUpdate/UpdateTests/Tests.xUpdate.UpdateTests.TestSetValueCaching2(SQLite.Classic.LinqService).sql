﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value2  -- Int32
SET     @Value2 = 11
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value2] = @Value2
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value2  -- Int32
SET     @Value2 = 12
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value2] = @Value2
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

