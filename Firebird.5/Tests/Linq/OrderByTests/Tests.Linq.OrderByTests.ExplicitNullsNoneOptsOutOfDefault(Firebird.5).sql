-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"x"."Id"
FROM
	"NullsTable" "x"
ORDER BY
	"x"."Value",
	"x"."Id"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"x"."Id"
FROM
	"NullsTable" "x"
ORDER BY
	"x"."Value",
	"x"."Id"
FETCH NEXT @take ROWS ONLY

