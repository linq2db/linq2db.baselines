-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"c_2"."Value_1"
FROM
	"Parent" "t1"
		CROSS JOIN LATERAL (
			SELECT
				"c_1"."ChildID" as "Key_1",
				COUNT(*) as "Value_1"
			FROM
				"Child" "c_1"
			WHERE
				"t1"."ParentID" = "c_1"."ParentID"
			GROUP BY
				"c_1"."ChildID"
		) "c_2"
ORDER BY
	"c_2"."Key_1",
	"c_2"."Value_1"

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

