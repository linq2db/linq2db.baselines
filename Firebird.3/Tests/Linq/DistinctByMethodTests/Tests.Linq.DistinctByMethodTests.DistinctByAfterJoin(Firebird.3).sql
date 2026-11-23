-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Country",
	"t1"."Tag"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Country" ORDER BY "e"."Id", "r"."Id") as "RowNumber",
			"e"."Id",
			"r"."Id" as "Id_1",
			"e"."Country",
			"r"."Tag"
		FROM
			"NullableKeyData" "e"
				INNER JOIN "RelatedData" "r" ON "e"."Id" = "r"."OwnerId"
		WHERE
			"e"."CustomerId" STARTING WITH 'DST'
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Id",
	"t1"."Id_1"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Country",
	"t1"."Region"
FROM
	"NullableKeyData" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."OwnerId",
	"t1"."Tag"
FROM
	"RelatedData" "t1"

