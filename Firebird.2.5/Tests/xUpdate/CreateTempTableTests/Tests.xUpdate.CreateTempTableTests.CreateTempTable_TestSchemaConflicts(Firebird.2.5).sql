-- Firebird.2.5 Firebird

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'value'
)

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TempTable"
			(
				"Id"      Int                                    NOT NULL,
				"Renamed" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TempTable" PRIMARY KEY ("Id")
			)
		';
END

-- Firebird.2.5 Firebird

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"

-- Firebird.2.5 Firebird

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- Firebird.2.5 Firebird

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
VALUES
(
	2,
	'renamed 2'
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Renamed"
FROM
	"TempTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

