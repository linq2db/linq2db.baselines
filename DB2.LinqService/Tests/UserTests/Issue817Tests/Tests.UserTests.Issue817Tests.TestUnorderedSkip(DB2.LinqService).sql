BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Person" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

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
	"t1".RN > @skip

