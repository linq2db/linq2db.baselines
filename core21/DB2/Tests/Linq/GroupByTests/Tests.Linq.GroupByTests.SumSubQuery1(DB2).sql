BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	Sum("t1"."c1" - 3)
FROM
	(
		SELECT
			"ch"."ParentID" + 1 as "c1",
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" + 2 > @n
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."ChildID"

