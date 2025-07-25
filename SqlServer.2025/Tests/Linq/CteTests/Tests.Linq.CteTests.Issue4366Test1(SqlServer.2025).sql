﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

WITH [d]
(
	[FullName],
	[id],
	[parent_id],
	[name]
)
AS
(
	SELECT
		[a].[name],
		[a].[id],
		[a].[parent_id],
		[a].[name]
	FROM
		[Dto] [a]
	WHERE
		[a].[parent_id] IS NULL
	UNION ALL
	SELECT
		[recur].[FullName] + N' > ' + [t1].[name],
		[t1].[id],
		[t1].[parent_id],
		[t1].[name]
	FROM
		[Dto] [t1]
			INNER JOIN [d] [recur] ON [recur].[id] = [t1].[parent_id]
)
SELECT
	[t2].[id],
	[t2].[parent_id],
	[t2].[name],
	[t2].[FullName]
FROM
	[d] [t2]

