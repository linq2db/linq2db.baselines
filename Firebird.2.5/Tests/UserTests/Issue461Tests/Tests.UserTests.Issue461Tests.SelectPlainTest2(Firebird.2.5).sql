-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	(
		SELECT FIRST 1
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
	)
FROM
	"Parent" "p"

