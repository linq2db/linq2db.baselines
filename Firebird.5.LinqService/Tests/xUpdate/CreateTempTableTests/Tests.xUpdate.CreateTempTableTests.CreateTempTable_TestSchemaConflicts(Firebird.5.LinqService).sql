BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Renamed"
FROM
	"TempTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

