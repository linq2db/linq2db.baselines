BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"p"."ParentID"
				FROM
					"Parent" "p"
				OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY 
			) "t1"
		WHERE
			"c_1"."ParentID" = "t1"."ParentID"
	)

