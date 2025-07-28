Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int64), @p3='?' (DbType = Int64), @p4='?' (DbType = Decimal), @p5='?' (DbType = Decimal)

INSERT INTO "UIntTable" ("Field16", "Field16N", "Field32", "Field32N", "Field64", "Field64N")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5)
RETURNING "ID";


-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @field64 Numeric(1, 0) -- Decimal
SET     @field64 = 5::decimal(1)

SELECT
	e."ID",
	e."Field16",
	e."Field32",
	e."Field64",
	e."Field16N",
	e."Field32N",
	e."Field64N"
FROM
	"UIntTable" e
WHERE
	e."Field64" = :field64
LIMIT 1



