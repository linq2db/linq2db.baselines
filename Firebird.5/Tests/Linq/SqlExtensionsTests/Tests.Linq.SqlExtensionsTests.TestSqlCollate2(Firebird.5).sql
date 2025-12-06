-- Firebird.5 Firebird4

SELECT
	'1' || "t1"."FirstName" COLLATE UNICODE_FSS || '2'
FROM
	"Person" "t1"

