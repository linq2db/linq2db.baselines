-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	MIN("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > @p

