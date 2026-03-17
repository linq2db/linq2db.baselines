-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Key_1" || '2'
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN "g_1"."ParentID" > 2 THEN CASE
					WHEN "g_1"."ParentID" > 3 THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1"
		FROM
			"Child" "g_1"
	) "p"
WHERE
	"p"."Key_1" || '2' = '22'

