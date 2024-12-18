BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @code Int32
SET     @code = 1
DECLARE @site Int32
SET     @site = 2

SELECT
	x_1."StatusPhase"
FROM
	(
		SELECT
			CAST(f."StringValue" AS SmallInt) as "StatusPhase"
		FROM
			"LinqDataTypes" x
				INNER JOIN "LinqDataTypes" o ON x."IntValue" = o."IntValue" AND x."IntValue" IS NOT NULL AND o."IntValue" IS NOT NULL OR x."IntValue" IS NULL AND o."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" u ON o."IntValue" = u."IntValue" AND o."IntValue" IS NOT NULL AND u."IntValue" IS NOT NULL OR o."IntValue" IS NULL AND u."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" r ON (u."IntValue" = r."IntValue" AND u."IntValue" IS NOT NULL AND r."IntValue" IS NOT NULL OR u."IntValue" IS NULL AND r."IntValue" IS NULL) AND (u."IntValue" = r."IntValue" AND u."IntValue" IS NOT NULL AND r."IntValue" IS NOT NULL OR u."IntValue" IS NULL AND r."IntValue" IS NULL) AND r."BoolValue" = 0
				INNER JOIN "LinqDataTypes" f ON r."IntValue" = f."IntValue" AND r."IntValue" IS NOT NULL AND f."IntValue" IS NOT NULL OR r."IntValue" IS NULL AND f."IntValue" IS NULL
		WHERE
			x."BoolValue" = 0 AND
			x."IntValue" = :code AND
			x."IntValue" IS NOT NULL AND
			x."IntValue" = :site AND
			x."IntValue" IS NOT NULL AND
			o."BoolValue" = 0 AND
			u."BoolValue" = 0
	) x_1
WHERE
	(CAST(x_1."StatusPhase" AS Int) NOT IN (11, 18, 19, 20, 21, 22, 23, 24, 26, 29, 28) OR CAST(x_1."StatusPhase" AS Int) IS NULL)

