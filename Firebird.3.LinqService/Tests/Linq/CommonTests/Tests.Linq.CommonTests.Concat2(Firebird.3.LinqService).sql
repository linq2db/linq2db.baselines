BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS) = 'John 1'

