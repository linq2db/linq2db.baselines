BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ParentID" = "p"."ParentID" AND
			(Decimal("c_1"."ChildID") <> 0 OR Decimal("c_1"."ChildID") IS NULL)
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

