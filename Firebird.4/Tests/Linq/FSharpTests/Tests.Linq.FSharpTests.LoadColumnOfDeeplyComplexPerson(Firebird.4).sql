﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p
FETCH NEXT 2 ROWS ONLY

