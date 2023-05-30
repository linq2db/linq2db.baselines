BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @n Integer(4) -- Int32
SET     @n = 3
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."Value1",
			ROW_NUMBER() OVER (ORDER BY "p"."ParentID") as RN
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 1
	) "t1"
WHERE
	"t1".RN > @n AND "t1".RN <= @take

