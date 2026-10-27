-- Firebird.5 Firebird4
SELECT
	"x_1"."ParentID",
	CASE
		WHEN "x_1"."ParentID_1" IS NULL THEN -1
		WHEN "x_1"."projection__set_id__" = 0 THEN "x_1"."ChildID"
		ELSE NULL
	END
FROM
	(
		SELECT
			"x"."ParentID",
			"c_1"."ParentID" as "ParentID_1",
			"c_1"."ChildID",
			CAST(0 AS Int) as "projection__set_id__"
		FROM
			"Parent" "x"
				LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "x"."ParentID"
		UNION ALL
		SELECT
			"p"."ParentID",
			NULL as "ParentID_1",
			NULL as "ChildID",
			CAST(1 AS Int) as "projection__set_id__"
		FROM
			"Parent" "p"
	) "x_1"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

