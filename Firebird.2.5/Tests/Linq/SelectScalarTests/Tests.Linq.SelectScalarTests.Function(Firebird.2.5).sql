BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT FIRST 1
	"c_1"."ChildID" || ',' || Coalesce(CAST(@text AS VARCHAR(3)), '')
FROM
	"Child" "c_1"

