BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"p"."PersonID",
	"gjd_ri"."PersonID",
	"gjd_ri"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Patient" "gjd_ri" ON "gjd_ri"."PersonID" = "p"."PersonID"
WHERE
	Lower("p"."FirstName") LIKE @input ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird3 Firebird
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE @input ESCAPE '~'

