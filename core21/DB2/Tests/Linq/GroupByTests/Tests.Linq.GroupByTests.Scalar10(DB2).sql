BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "id"
		WHERE
			"t1"."ParentID" = "id"."ParentID" AND "id"."ChildID" < 30 AND "id"."ChildID" >= 20
	)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

