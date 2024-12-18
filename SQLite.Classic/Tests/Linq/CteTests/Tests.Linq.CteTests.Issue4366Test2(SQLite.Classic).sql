﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Dto]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Dto]
(
	[id]        INTEGER       NOT NULL,
	[name]      NVarChar(255)     NULL,
	[parent_id] INTEGER           NULL,
	[FullName]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

WITH [d]
(
	[FullName],
	[Dto_id],
	[Dto_name],
	[Dto_parent_id],
	[Dto_FullName]
)
AS
(
	SELECT
		[a].[name],
		[a].[id],
		[a].[name],
		[a].[parent_id],
		[a].[FullName]
	FROM
		[Dto] [a]
	WHERE
		[a].[parent_id] IS NULL
	UNION ALL
	SELECT
		[recur].[FullName] || ' > ' || [t1].[name],
		[t1].[id],
		[t1].[name],
		[t1].[parent_id],
		[t1].[FullName]
	FROM
		[Dto] [t1]
			INNER JOIN [d] [recur] ON [recur].[Dto_id] = [t1].[parent_id] AND [t1].[parent_id] IS NOT NULL
)
SELECT
	[t2].[Dto_id],
	[t2].[Dto_name],
	[t2].[Dto_parent_id],
	[t2].[Dto_FullName],
	[t2].[FullName]
FROM
	[d] [t2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Dto]

