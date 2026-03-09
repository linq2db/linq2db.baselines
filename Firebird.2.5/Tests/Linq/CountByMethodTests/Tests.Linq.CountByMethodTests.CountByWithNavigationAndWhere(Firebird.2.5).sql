-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"c_2"."Value_1"
FROM
	"Parent" "p"
		INNER JOIN (
			SELECT
				COUNT(*) as "Value_1",
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			GROUP BY
				"c_1"."ParentID"
		) "c_2" ON "p"."ParentID" = "c_2"."ParentID"
WHERE
	"c_2"."Value_1" > 0

-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

