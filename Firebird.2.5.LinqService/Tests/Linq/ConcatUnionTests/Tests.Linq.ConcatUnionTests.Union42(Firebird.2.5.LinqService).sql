BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p_1"."val"
FROM
	(
		SELECT
			"p"."ParentID",
			CAST('1' AS CHAR(1)) as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"ch"."ParentID",
			CAST('0' AS CHAR(1)) as "val"
		FROM
			"Child" "ch"
	) "p_1"

