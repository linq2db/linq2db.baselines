-- Firebird.3 Firebird3
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	CASE
		WHEN (
			SELECT
				MAX("a_Children"."ChildID")
			FROM
				"Child" "a_Children"
			WHERE
				"x"."ParentID" = "a_Children"."ParentID"
		) = 11
			THEN FALSE
		ELSE TRUE
	END

