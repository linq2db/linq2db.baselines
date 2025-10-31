-- Oracle.23.Managed Oracle.Managed Oracle12
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
				INNER JOIN "LinqDataTypes" o ON x."IntValue" = o."IntValue" OR x."IntValue" IS NULL AND o."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" u ON o."IntValue" = u."IntValue" OR o."IntValue" IS NULL AND u."IntValue" IS NULL
				INNER JOIN "LinqDataTypes" r ON (u."IntValue" = r."IntValue" OR u."IntValue" IS NULL AND r."IntValue" IS NULL) AND r."BoolValue" = 0
				INNER JOIN "LinqDataTypes" f ON r."IntValue" = f."IntValue" OR r."IntValue" IS NULL AND f."IntValue" IS NULL
		WHERE
			x."BoolValue" = 0 AND
			x."IntValue" = :code AND
			x."IntValue" = :site AND
			o."BoolValue" = 0 AND
			u."BoolValue" = 0
	) x_1
WHERE
	(CAST(x_1."StatusPhase" AS Int) NOT IN (11, 18, 19, 20, 21, 22, 23, 24, 26, 29, 28) OR CAST(x_1."StatusPhase" AS Int) IS NULL)

