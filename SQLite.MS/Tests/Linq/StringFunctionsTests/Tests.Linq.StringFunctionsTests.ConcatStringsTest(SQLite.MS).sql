﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	IFNULL([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
--  SQLite.MS SQLite

SELECT
	IFNULL([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
--  SQLite.MS SQLite

SELECT
	SUBSTR(((IFNULL((' -> ' || [t].[Value3]), '') || IFNULL((' -> ' || [t].[Value1]), '')) || IFNULL((' -> ' || [t].[Value2]), '')), LENGTH(' -> ') + 1)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
--  SQLite.MS SQLite

SELECT
	SUBSTR((IFNULL((' -> ' || [t].[Value3]), '') || IFNULL((' -> ' || [t].[Value3]), '')), LENGTH(' -> ') + 1)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

