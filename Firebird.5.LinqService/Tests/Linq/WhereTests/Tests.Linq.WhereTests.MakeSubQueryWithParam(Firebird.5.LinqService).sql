﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID" + Cast(@n as Int),
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + Cast(@n as Int) = 2

