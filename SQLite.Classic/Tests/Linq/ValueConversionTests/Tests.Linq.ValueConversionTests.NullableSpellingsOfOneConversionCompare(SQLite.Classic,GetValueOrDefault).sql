-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[Issue5975Row] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Plain]) = strftime('%Y-%m-%d %H:%M:%f', [r].[Date])

