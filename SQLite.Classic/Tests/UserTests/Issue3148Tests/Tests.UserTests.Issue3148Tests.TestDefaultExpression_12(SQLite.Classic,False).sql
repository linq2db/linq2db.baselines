﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @var1  -- Object
SET     @var1 = 4

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3]
FROM
	(
		SELECT 0 as Id, NULL as Field1, NULL as Field2, @var1 as Field3
	) [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @var1  -- Object
SET     @var1 = 4

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[Field3]
FROM
	(
		SELECT 0 as Id, NULL as Field1, NULL as Field2, @var1 as Field3
	) [t1]

