BeforeExecute
-- Firebird

CREATE TABLE "Issue3360NullInAnchor"
(
	"Id"    Int                                   NOT NULL,
	"Enum1" VarChar(50) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

WITH RECURSIVE "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		NULL
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"p_1"."Id",
		'THIS_IS_ONE'
	FROM
		"cte" "p_1"
			INNER JOIN "Issue3360NullInAnchor" "r" ON "p_1"."Id" = "r"."Id" + 100
)
SELECT
	"t1"."Id",
	"t1"."Enum1"
FROM
	"cte" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3360NullInAnchor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3360NullInAnchor"';
END

