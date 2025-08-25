BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	RTrim(Char("c_1"."ChildID")) || ',' || Coalesce(CAST(@text AS NVarChar(3)), '')
FROM
	"Child" "c_1"
FETCH NEXT 1 ROWS ONLY

