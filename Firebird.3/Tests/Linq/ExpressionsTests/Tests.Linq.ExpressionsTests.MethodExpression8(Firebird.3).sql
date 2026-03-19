-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = CAST(Floor(CAST("t1"."ChildID" AS DOUBLE PRECISION) / 10) AS Int)
WHERE
	"t1"."ParentID" = "p"."ParentID"

