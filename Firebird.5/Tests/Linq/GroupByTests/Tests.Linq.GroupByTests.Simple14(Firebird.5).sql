-- Firebird.5 Firebird4

SELECT
	"m_1"."Item1",
	"d_1"."Key_1"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID" as "Item1"
		FROM
			"Parent" "p"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT DISTINCT
				"d"."ParentID" as "Key_1"
			FROM
				"Child" "d"
			WHERE
				"m_1"."Item1" = "d"."ParentID"
		) "d_1"

-- Firebird.5 Firebird4

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

