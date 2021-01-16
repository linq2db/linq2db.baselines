BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", 0) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", 0) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", 0) = 2)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "SampleClass"

