BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"        Int NOT NULL,
				"NullValue" Int
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND ("a"."NullValue" = 0 AND "a"."NullValue" IS NOT NULL OR "a"."NullValue" IS NULL) OR "a"."Id" = 1 AND "a"."NullValue" = 1 AND "a"."NullValue" IS NOT NULL OR "a"."Id" = 2 AND "a"."NullValue" = 2 AND "a"."NullValue" IS NOT NULL)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

