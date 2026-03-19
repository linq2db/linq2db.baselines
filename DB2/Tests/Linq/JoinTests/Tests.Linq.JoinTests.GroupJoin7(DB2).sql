-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		WHERE
			"t1"."ParentID" = 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID" - @n

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = 1

