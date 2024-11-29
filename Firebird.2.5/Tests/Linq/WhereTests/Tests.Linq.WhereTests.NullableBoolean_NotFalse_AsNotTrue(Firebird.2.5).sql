BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBool"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NullableBool"
			(
				ID     Int     NOT NULL,
				"Bool" CHAR(1)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = '1' OR "r"."Bool" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBool"';
END

