BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT
	CASE
		WHEN COUNT("t1"."ParentID") = COUNT("right_2"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*)
			THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> ?
	) "t1"
		FULL JOIN (
			SELECT
				"right_1"."ParentID"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> ?
		) "right_2" ON "right_2"."ParentID" = "t1"."ParentID"
LIMIT 2

