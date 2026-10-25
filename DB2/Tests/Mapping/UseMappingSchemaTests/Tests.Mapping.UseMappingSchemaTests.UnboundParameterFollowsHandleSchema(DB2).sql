-- DB2 DB2.LUW DB2LUW
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	CAST(@token AS NVarChar(2))
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

