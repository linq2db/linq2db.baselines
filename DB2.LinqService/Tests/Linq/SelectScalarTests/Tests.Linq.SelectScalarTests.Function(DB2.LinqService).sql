BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	"c_1"."ChildID" || ',' || @text
FROM
	"Child" "c_1"
FETCH NEXT 1 ROWS ONLY

