BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = TRUE OR "r"."Bool" IS NULL

