BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicColumnsTestTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DynamicColumnsTestTable"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."Id"
FROM
	"DynamicColumnsTestTable" "x"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicColumnsTestTable"';
END

