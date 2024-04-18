BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	CASE
		WHEN "t1"."ParentID" > 0 AND "t1"."ChildID" <> "t1"."ParentID"
			THEN TRUE
		ELSE FALSE
	END DESC,
	"t1"."ChildID"

