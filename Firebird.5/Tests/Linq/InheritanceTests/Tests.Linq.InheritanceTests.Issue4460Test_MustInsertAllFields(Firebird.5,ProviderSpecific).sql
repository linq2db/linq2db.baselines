BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
SELECT 1,CAST('GrandChild' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Tom' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Black' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"

