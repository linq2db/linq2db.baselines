﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT @value

BeforeExecute
--  SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT @value

BeforeExecute
--  SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS @value

BeforeExecute
--  SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS @value

