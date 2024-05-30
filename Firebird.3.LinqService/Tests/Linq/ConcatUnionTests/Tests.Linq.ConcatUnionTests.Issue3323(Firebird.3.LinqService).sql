BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3323Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Text",
	"t1"."FistName" || ' ' || "t1"."LastName"
FROM
	"Issue3323Table" "t1"
UNION ALL
SELECT
	"t2"."Id",
	"t2"."Text",
	"t2"."FistName" || ' ' || "t2"."LastName"
FROM
	"Issue3323Table" "t2"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3323Table"';
END

