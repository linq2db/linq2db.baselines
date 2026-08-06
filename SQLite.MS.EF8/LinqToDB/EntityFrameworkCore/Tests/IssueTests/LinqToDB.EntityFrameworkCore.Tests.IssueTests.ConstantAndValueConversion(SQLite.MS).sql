Parameters:
@p0='?' (DbType = Int16)

INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p0)
RETURNING "Id";


Parameters:
@p0='?' (DbType = Int16)

INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p0)
RETURNING "Id";


-- SQLite.MS SQLite
DECLARE @IsArchived  -- Int16
SET     @IsArchived = 0

SELECT
	[t].[Id],
	[t].[IsArchived]
FROM
	[Issue5388Task] [t]
WHERE
	[t].[IsArchived] = @IsArchived



