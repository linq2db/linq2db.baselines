-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT
	1
FROM
	"Person" "t1"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

