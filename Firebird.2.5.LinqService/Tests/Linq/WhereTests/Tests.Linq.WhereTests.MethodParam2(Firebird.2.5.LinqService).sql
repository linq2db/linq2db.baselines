﻿BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

