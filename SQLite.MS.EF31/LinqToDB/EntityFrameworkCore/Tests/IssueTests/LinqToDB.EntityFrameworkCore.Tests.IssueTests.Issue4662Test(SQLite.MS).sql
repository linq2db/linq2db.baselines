Parameters:
@p0='?' (Size = 9)

INSERT INTO "Issue4662" ("Value")
VALUES (@p0);
SELECT "Id"
FROM "Issue4662"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4662] [t1]



