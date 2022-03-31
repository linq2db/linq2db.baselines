BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id2  -- Int32
SET     @id2 = 2
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	COUNT("left_1"."ParentID"),
	COUNT("t1"."ParentID"),
	COUNT(*)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> ?
	) "left_1"
		FULL JOIN (
			SELECT
				"p_1"."ParentID"
			FROM
				"Parent" "p_1"
			WHERE
				"p_1"."ParentID" <> ?
		) "t1" ON "t1"."ParentID" = "left_1"."ParentID"
LIMIT ?

