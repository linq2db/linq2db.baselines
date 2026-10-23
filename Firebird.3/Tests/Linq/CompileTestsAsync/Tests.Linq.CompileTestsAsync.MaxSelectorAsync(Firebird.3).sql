-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	MAX("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > @p

