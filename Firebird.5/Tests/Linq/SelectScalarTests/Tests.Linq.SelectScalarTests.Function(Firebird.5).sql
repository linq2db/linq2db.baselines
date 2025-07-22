BeforeExecute
-- Firebird.5 Firebird4
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	"c_1"."ChildID" || ',' || Coalesce(CAST(@text AS VARCHAR(3)), '')
FROM
	"Child" "c_1"
FETCH NEXT 1 ROWS ONLY

