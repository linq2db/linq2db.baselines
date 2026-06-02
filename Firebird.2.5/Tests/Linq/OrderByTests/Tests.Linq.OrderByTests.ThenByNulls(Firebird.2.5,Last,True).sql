-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"
ORDER BY
	"t1"."Grp",
	"t1"."Value" DESC NULLS LAST,
	"t1"."Id"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"

