BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN ('oh', 'oh''', 'oh\')

