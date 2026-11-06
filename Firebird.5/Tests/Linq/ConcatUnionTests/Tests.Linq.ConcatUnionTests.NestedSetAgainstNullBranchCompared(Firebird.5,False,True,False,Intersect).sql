-- Firebird.5 Firebird4
SELECT DISTINCT
	"t1"."ParentID",
	"t1"."ParentID_1",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."ParentID" as "ParentID_1",
			"p"."ParentID" + 100 as "ChildID"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p_1"."ParentID",
			NULL as "ParentID_1",
			NULL as "ChildID"
		FROM
			"Parent" "p_1"
	) "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_2"
		WHERE
			"t1"."ParentID" = "p_2"."ParentID" AND "t1"."ParentID_1" IS NULL AND
			"t1"."ChildID" IS NULL
	)

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

