BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 2

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			1 as "c1",
			ROW_NUMBER() OVER () as RN
		FROM
			"Person" "_"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @skip_1

