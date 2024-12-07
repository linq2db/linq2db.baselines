BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p_2"."val"
FROM
	(
		SELECT
			"p"."ParentID",
			TRUE as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p_1"."ParentID",
			FALSE as "val"
		FROM
			"Parent" "p_1"
		UNION
		SELECT
			"ch"."ParentID",
			FALSE as "c1"
		FROM
			"Child" "ch"
	) "p_2"

