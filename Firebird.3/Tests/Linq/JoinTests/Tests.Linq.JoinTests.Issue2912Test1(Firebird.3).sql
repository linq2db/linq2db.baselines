-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "t1"."ParentID" IS NOT NULL THEN "t1"."ChildID"
		ELSE 0
	END
FROM
	"Parent" "employee"
		LEFT JOIN (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentID" ORDER BY "a_Children"."ParentID") as "rn"
			FROM
				"Child" "a_Children"
		) "t1" ON "employee"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1

