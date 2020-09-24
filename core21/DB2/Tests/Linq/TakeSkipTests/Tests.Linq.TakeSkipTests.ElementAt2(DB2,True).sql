BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 3
DECLARE @n_1 Integer(4) -- Int32
SET     @n_1 = 4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."Value1",
			ROW_NUMBER() OVER () as RN
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 1
	) "t1"
WHERE
	"t1".RN > @n AND "t1".RN <= @n_1

