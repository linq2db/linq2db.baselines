BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue3323Table"
(
	"Id"       Int                                    NOT NULL,
	"FistName" VarChar(255) CHARACTER SET UNICODE_FSS,
	"LastName" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName"
)
VALUES
(
	1,
	'one',
	'two'
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."FistName" || ' ' || "t1"."LastName"
FROM
	"Issue3323Table" "t1"
UNION ALL
SELECT
	"t2"."Id",
	"t2"."FistName" || ' ' || "t2"."LastName"
FROM
	"Issue3323Table" "t2"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3323Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3323Table"';
END

