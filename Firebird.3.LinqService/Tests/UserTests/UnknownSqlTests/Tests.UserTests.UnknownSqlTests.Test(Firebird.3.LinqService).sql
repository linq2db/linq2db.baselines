BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomTableColumn')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomTableColumn"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomTableColumn')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CustomTableColumn"
			(
				"DataTypeID" Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	0
FROM
	"CustomTableColumn" "x"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomTableColumn')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomTableColumn"';
END

