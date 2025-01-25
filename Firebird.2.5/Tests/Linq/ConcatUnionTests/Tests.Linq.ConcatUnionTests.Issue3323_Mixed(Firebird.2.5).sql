BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3323Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3323Table"
			(
				"Id"       Int                                    NOT NULL,
				"FistName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Text"     VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."FistName" || ' ' || "r"."LastName"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id" + 1,
	"r_1"."Text"
FROM
	"Issue3323Table" "r_1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id" + 1,
	"r"."Text"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id",
	"r_1"."FistName" || ' ' || "r_1"."LastName"
FROM
	"Issue3323Table" "r_1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3323Table"';
END

