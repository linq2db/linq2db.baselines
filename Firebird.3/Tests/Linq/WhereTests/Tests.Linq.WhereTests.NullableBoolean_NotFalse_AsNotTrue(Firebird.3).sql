BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBool"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NullableBool"
			(
				ID     Int     NOT NULL,
				"Bool" BOOLEAN
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = TRUE OR "r"."Bool" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NullableBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NullableBool"';
END

