BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"ComplexPredicate" "r"
WHERE
	("r"."Value" = '123' AND "r"."Value" IS NOT NULL) = ("r"."Value" = '1' AND "r"."Value" IS NOT NULL OR "r"."Value" = 'test' AND "r"."Value" IS NOT NULL AND ("r"."Value" <> '1' OR "r"."Value" IS NULL))
ORDER BY
	"r"."Id"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ComplexPredicate" "t1"

