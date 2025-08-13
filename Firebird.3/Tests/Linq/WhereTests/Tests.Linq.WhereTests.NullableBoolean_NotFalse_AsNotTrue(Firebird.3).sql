BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = TRUE OR "r"."Bool" IS NULL

