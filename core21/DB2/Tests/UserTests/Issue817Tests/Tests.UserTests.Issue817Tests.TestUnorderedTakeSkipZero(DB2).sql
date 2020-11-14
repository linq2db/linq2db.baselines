BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 1

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
	"t1".RN > @skip AND "t1".RN <= @take

