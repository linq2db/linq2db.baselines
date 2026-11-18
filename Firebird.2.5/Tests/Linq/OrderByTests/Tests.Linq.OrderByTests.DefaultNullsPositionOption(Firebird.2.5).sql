-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"x"."Id"
FROM
	"NullsTable" "x"
ORDER BY
	"x"."Value" NULLS LAST,
	"x"."Id"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"x"."Id"
FROM
	"NullsTable" "x"
ORDER BY
	"x"."Value" NULLS LAST,
	"x"."Id"

