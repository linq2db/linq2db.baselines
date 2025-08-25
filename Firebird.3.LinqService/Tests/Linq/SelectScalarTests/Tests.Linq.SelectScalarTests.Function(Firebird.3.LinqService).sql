BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	"c_1"."ChildID" || ',' || Coalesce(CAST(@text AS VARCHAR(3)), '')
FROM
	"Child" "c_1"
FETCH NEXT 1 ROWS ONLY

