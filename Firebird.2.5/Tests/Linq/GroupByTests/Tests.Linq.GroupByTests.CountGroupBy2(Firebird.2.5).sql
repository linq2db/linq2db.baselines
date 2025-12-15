-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "p" ON "c_1"."ParentID" = "p"."ParentID"

