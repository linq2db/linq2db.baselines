-- Firebird.3 Firebird3
SELECT
	"c_1"."ChildID",
	"p"."ParentID",
	CASE
		WHEN "p"."ParentID" IS NULL THEN NULL
		ELSE (
			SELECT
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" <> "c_1"."ChildID"
			ORDER BY
				"ch"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		)
	END
FROM
	"Child" "c_1"
		LEFT JOIN (
			SELECT
				"g_1"."ParentID",
				ROW_NUMBER() OVER (PARTITION BY "g_1"."ChildID" ORDER BY "g_1"."GrandChildID") as "rn",
				"g_1"."ChildID"
			FROM
				"GrandChild" "g_1"
		) "x"
			INNER JOIN "Parent" "p" ON "x"."ParentID" = "p"."ParentID"
		ON "x"."ChildID" = "c_1"."ChildID" AND "x"."rn" = 1

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

