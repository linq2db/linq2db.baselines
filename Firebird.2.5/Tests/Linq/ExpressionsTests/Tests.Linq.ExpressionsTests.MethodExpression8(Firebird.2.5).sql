-- Firebird.2.5 Firebird

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = CAST(Floor(CAST("ch"."ChildID" AS DOUBLE PRECISION) / 10) AS Int)
WHERE
	"ch"."ParentID" = "p"."ParentID"

