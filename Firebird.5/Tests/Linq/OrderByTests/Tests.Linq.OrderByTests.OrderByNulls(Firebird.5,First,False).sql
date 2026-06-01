-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"
ORDER BY
	"t1"."Value" NULLS FIRST,
	"t1"."Id"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"

