BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT
	"t3".F2
FROM
	(
		SELECT DISTINCT
			"t2".F1,
			"t2".F2
		FROM
			(
				SELECT
					"t1".F1,
					"t1".F2
				FROM
					"DistinctOrderByTable" "t1"
				ORDER BY
					"t1".F3 DESC
				OFFSET 1 ROWS FETCH NEXT @take ROWS ONLY 
			) "t2"
	) "t3"

