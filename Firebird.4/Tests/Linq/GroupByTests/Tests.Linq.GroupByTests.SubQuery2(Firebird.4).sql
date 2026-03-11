-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT DISTINCT
	"g_1"."ParentID" + 1
FROM
	"Child" "g_1"
WHERE
	"g_1"."ParentID" + 1 > @n

