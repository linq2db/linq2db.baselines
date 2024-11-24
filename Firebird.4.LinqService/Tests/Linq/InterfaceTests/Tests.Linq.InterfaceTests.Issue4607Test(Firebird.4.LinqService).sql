BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SomeTable"
			(
				"ClassProp" BOOLEAN NOT NULL,
				"Interface" BOOLEAN NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	TRUE,
	FALSE
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeTable"';
END

