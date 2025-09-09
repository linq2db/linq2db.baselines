BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."InId" as "LinkId",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMinQuantity"
		ELSE e."InMinQuantity"
	END as "MinQuantity",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMaxQuantity"
		ELSE e."InMaxQuantity"
	END as "MaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."InId" as "LinkId",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMinQuantity"
		ELSE e."InMinQuantity"
	END as "MinQuantity",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMaxQuantity"
		ELSE e."InMaxQuantity"
	END as "MaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 2
FETCH NEXT 2 ROWS ONLY

