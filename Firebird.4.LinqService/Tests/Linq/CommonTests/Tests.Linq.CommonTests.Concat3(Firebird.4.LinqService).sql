﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	("p"."FirstName" || ' 12') = 'John 12'

