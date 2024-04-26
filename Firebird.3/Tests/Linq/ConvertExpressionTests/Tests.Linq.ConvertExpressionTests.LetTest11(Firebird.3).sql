BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" > 0
		ORDER BY
			"c_1"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			"c_2"."ParentID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ChildID" > -100
		ORDER BY
			"c_2"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			"c_3"."ChildID"
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ChildID" > -100
		ORDER BY
			"c_3"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

