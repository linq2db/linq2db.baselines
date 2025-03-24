BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS) = 'John 1'

