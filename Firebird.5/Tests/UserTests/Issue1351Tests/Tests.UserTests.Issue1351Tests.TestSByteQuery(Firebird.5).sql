BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'T1351Model')) THEN
		EXECUTE STATEMENT 'DROP TABLE "T1351Model"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'T1351Model')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "T1351Model"
			(
				ID             Int      NOT NULL,
				"TestField"    SmallInt NOT NULL,
				"TestNullable" SmallInt
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestField" = 0

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestNullable" <> 1 OR "t1"."TestNullable" IS NULL

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'T1351Model')) THEN
		EXECUTE STATEMENT 'DROP TABLE "T1351Model"';
END

