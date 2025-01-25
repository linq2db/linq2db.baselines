BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

SELECT
	CAST(COUNT("t1"."ParentID") = COUNT("right_2"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*) AS smallint)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> @id1
	) "t1"
		FULL JOIN (
			SELECT
				"right_1"."ParentID"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> @id2
		) "right_2" ON "right_2"."ParentID" = "t1"."ParentID"
FETCH NEXT 2 ROWS ONLY

