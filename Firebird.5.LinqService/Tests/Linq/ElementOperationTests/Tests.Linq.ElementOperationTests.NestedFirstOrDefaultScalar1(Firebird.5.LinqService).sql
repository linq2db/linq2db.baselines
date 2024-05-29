BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			"t1"."ChildID"
		FROM
			"Child" "t1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

