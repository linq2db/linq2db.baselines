BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SomeTable"
			(
				"ClassProp" CHAR(1) NOT NULL,
				"Interface" CHAR(1) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	'1',
	'0'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeTable"';
END

