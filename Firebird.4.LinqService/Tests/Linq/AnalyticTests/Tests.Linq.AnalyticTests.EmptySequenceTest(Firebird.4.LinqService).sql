BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."ParentID",
	"d_1"."ParentID",
	"d_1"."Children"
FROM
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Parent" "c_1"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT
				"d"."ParentID",
				LIST("d"."ChildID", ', ') as "Children"
			FROM
				"Child" "d"
			WHERE
				"m_1"."ParentID" = "d"."ParentID"
			GROUP BY
				"d"."ParentID"
		) "d_1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID"
FROM
	"Parent" "c_1"

