BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	CAST(COUNT("t1"."ParentID") = COUNT("right_1"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*) AS smallint)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> @id
	) "t1"
		FULL JOIN "Parent" "right_1" ON "right_1"."ParentID" = "t1"."ParentID"
FETCH NEXT 2 ROWS ONLY

