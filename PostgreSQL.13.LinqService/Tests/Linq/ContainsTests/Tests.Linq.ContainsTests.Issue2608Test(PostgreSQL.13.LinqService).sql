BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @code Integer -- Int32
SET     @code = 1
DECLARE @site Integer -- Int32
SET     @site = 2

SELECT
	x_1."StatusPhase"
FROM
	(
		SELECT
			f."StringValue"::SmallInt as "StatusPhase"
		FROM
			"LinqDataTypes" x
				INNER JOIN "LinqDataTypes" o ON x."IntValue" = o."IntValue" AND x."IntValue" IS NOT NULL AND o."IntValue" IS NOT NULL OR x."IntValue" IS NULL AND o."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" u ON o."IntValue" = u."IntValue" AND o."IntValue" IS NOT NULL AND u."IntValue" IS NOT NULL OR o."IntValue" IS NULL AND u."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" r ON (u."IntValue" = r."IntValue" AND u."IntValue" IS NOT NULL AND r."IntValue" IS NOT NULL OR u."IntValue" IS NULL AND r."IntValue" IS NULL) AND (u."IntValue" = r."IntValue" AND u."IntValue" IS NOT NULL AND r."IntValue" IS NOT NULL OR u."IntValue" IS NULL AND r."IntValue" IS NULL) AND r."BoolValue" = False
				INNER JOIN "LinqDataTypes" f ON r."IntValue" = f."IntValue" AND r."IntValue" IS NOT NULL AND f."IntValue" IS NOT NULL OR r."IntValue" IS NULL AND f."IntValue" IS NULL
		WHERE
			x."BoolValue" = False AND
			x."IntValue" = :code AND
			x."IntValue" IS NOT NULL AND
			x."IntValue" = :site AND
			x."IntValue" IS NOT NULL AND
			o."BoolValue" = False AND
			u."BoolValue" = False
	) x_1
WHERE
	(x_1."StatusPhase" NOT IN (11, 18, 19, 20, 21, 22, 23, 24, 26, 29, 28) OR x_1."StatusPhase" IS NULL)

