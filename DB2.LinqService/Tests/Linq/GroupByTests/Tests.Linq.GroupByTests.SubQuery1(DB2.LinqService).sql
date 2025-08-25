BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	"g_2"."Key_1"
FROM
	(
		SELECT
			"g_1"."ParentID" + 1 as "Key_1"
		FROM
			"Child" "g_1"
		WHERE
			"g_1"."ParentID" + 1 > @n
	) "g_2"
GROUP BY
	"g_2"."Key_1"

