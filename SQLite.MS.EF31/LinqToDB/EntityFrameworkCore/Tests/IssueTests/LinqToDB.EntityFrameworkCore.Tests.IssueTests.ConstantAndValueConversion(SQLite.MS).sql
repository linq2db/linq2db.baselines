Parameters:
@p0='?'

INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p0);
SELECT "Id"
FROM "Issue5388Task"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?'

INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p0);
SELECT "Id"
FROM "Issue5388Task"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


-- SQLite.MS SQLite
DECLARE @IsArchived  -- Boolean
SET     @IsArchived = 0

SELECT
	[t].[Id],
	[t].[IsArchived]
FROM
	[Issue5388Task] [t]
WHERE
	[t].[IsArchived] = @IsArchived



