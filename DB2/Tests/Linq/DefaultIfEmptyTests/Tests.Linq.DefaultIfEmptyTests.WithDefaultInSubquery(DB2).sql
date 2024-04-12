BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			SUM(CASE
				WHEN "d"."ParentID" IS NOT NULL THEN "d"."ParentID"
				ELSE -100
			END)
		FROM
			(
				SELECT
					-100 as "ParentID"
				FROM SYSIBM.SYSDUMMY1
			) "t1"
				LEFT JOIN "Child" "d" ON "p"."ParentID" = "d"."ParentID"
	)
FROM
	"Parent" "p"

