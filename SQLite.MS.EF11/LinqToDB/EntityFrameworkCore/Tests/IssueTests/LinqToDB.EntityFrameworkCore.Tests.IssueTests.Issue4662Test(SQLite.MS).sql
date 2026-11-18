Parameters:
@p0='?' (Size = 9)

INSERT INTO "Issue4662" ("Value")
VALUES (@p0)
RETURNING "Id";


-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4662] [t1]



