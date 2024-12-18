﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT FIRST 1
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @p AND "p"."FirstName" IS NOT NULL

