-- Firebird.3 Firebird3
SELECT DISTINCT
	"t2"."ParentID",
	"t2"."Child",
	"t2"."ParentID_1",
	"t2"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID",
			NULL as "Child",
			NULL as "ParentID_1",
			NULL as "ChildID"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"t1"."ParentID",
			"c_1"."ParentID" as "Child",
			"c_1"."ParentID" as "ParentID_1",
			"c_1"."ChildID"
		FROM
			"Parent" "t1"
				LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"
	) "t2"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_1"
		WHERE
			"t2"."ParentID" = "p_1"."ParentID" AND
			"t2"."Child" IS NULL AND
			"t2"."ParentID_1" IS NULL AND
			"t2"."ChildID" IS NULL
	)

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

