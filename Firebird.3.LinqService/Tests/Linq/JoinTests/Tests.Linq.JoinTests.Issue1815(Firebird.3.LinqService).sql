BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 2
FETCH NEXT 2 ROWS ONLY

