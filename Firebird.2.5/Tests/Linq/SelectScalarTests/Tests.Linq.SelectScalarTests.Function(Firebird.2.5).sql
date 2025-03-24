BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT FIRST 1
	CAST("c_1"."ChildID" AS VarChar(11) CHARACTER SET UNICODE_FSS) || ',' || CAST(@text AS VARCHAR(3))
FROM
	"Child" "c_1"

