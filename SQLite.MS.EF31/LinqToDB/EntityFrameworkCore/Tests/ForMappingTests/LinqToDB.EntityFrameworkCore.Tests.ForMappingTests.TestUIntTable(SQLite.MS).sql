Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?', @p5='?'

INSERT INTO "UIntTable" ("Field16", "Field16N", "Field32", "Field32N", "Field64", "Field64N")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
SELECT "ID"
FROM "UIntTable"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


-- SQLite.MS SQLite (asynchronously)
DECLARE @field64 Decimal
SET     @field64 = 5

SELECT
	[e].[ID],
	[e].[Field16],
	[e].[Field32],
	[e].[Field64],
	[e].[Field16N],
	[e].[Field32N],
	[e].[Field64N]
FROM
	[UIntTable] [e]
WHERE
	[e].[Field64] = @field64
LIMIT 1



