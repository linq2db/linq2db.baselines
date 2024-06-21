﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3360Table"
			(
				"Id"  Int                                    NOT NULL,
				"Str" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		'Str'
	FROM
		"cte" "t1",
		"Issue3360Table" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360Table"';
END

