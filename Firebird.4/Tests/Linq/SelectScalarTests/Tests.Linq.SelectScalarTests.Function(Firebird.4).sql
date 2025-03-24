BeforeExecute
--  Firebird.4 Firebird4
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	CAST("c_1"."ChildID" AS VarChar(11) CHARACTER SET UNICODE_FSS) || ',' || CAST(@text AS VARCHAR(3))
FROM
	"Child" "c_1"
FETCH NEXT 1 ROWS ONLY

