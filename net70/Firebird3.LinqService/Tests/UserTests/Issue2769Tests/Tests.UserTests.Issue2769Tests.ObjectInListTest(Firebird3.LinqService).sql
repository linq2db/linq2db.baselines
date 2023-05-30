BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @_default Integer -- Int32
SET     @_default = 0

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", @_default) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", @_default) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", @_default) = 2)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

