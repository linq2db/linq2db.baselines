-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"c_2"."Value_1"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				COUNT(*) as "Value_1"
			FROM
				"Child" "c_1"
			WHERE
				"p"."ParentID" = "c_1"."ParentID"
			GROUP BY
				"c_1"."ParentID"
		) "c_2"
WHERE
	"c_2"."Value_1" > 0

-- Firebird.4 Firebird4

SELECT
	"m_1"."Item1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID" as "Item1"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Item1" = "d"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

