-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"
ORDER BY
	"t1"."Value" DESC,
	"t1"."Id"
FETCH NEXT @take ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"

