BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || Cast(1 as VarChar(4000) CHARACTER SET UNICODE_FSS) = 'John 1'

