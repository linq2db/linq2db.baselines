BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CASE
		WHEN "t1"."ParentID" IS NOT NULL THEN "t1"."ChildID"
		ELSE 0
	END
FROM
	"Parent" "employee"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"employee"."ParentID" = "a_Children"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

