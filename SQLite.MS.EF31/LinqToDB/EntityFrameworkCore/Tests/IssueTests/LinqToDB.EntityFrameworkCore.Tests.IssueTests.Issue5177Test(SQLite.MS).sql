Parameters:
@p0='?', @p1='?'

INSERT INTO "Issue5177" ("Id", "Value")
VALUES (@p0, @p1);


-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[Issue5177] [r]
WHERE
	[r].[Value] IS NULL
LIMIT 2



