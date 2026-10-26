-- SapHana.Native SapHana
SELECT
	"m_1"."ParentID",
	"t1"."ChildID",
	"t1"."ParentID"
FROM
	"Parent" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ChildID",
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "m_1"."ParentID"
			ORDER BY
				"c_1"."ChildID"
			LIMIT 1
		) "t1" ON 1=1

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

