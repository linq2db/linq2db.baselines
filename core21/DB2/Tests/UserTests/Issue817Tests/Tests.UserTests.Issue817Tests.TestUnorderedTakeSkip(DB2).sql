BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 2

SELECT
	1
FROM
	(
		SELECT
			ROW_NUMBER() OVER () as RN
		FROM
			"Person" "_"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @skip_1

