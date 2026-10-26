-- SapHana.Native SapHana
SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		LIMIT 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"
LIMIT 1

