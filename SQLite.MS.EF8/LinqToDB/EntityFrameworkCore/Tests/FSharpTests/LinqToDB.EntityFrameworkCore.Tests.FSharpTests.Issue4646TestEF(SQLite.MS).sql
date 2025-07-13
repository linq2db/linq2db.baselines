Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

INSERT INTO "Issue4646Table" ("Value", "ValueN")
VALUES (@p0, @p1)
RETURNING "Id";


-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueN]
FROM
	[Issue4646Table] [t1]
LIMIT 2



