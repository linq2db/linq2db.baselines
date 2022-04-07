BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", 0) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", 0) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", 0) = 2)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

