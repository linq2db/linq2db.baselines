﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN ('oh', 'oh''', 'oh\')

