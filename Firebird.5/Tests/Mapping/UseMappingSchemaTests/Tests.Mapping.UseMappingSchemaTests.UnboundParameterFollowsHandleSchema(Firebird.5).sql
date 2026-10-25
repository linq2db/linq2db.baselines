-- Firebird.5 Firebird4
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	CAST(@token AS VARCHAR(2))
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

