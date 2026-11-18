-- Firebird.4 Firebird4
SELECT DISTINCT
	"p"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID"
			ORDER BY
				"c_1"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_1"
		WHERE
			"p"."ParentID" = "p_1"."ParentID" AND "t1"."ParentID" IS NULL AND
			"t1"."ChildID" IS NULL
	)

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

