BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird
DECLARE @input_2 VarChar(6) -- String
SET     @input_2 = '%test%'

SELECT
	"p"."PersonID",
	"gjd_ri"."PersonID",
	"gjd_ri"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Patient" "gjd_ri" ON "gjd_ri"."PersonID" = "p"."PersonID"
WHERE
	Lower("p"."FirstName") LIKE @input_2 ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @input_2 VarChar(6) -- String
SET     @input_2 = '%test%'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE @input_2 ESCAPE '~'

