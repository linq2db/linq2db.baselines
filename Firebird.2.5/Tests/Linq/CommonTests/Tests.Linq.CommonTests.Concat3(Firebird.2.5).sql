-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	("p"."FirstName" || ' 12') = 'John 12'

