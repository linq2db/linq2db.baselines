BeforeExecute
-- Firebird
DECLARE @input_1 VarChar(6) -- String
SET     @input_1 = '%test%'

SELECT
	"p"."PersonID",
	"gjd_ri"."PersonID",
	"gjd_ri"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Patient" "gjd_ri" ON "gjd_ri"."PersonID" = "p"."PersonID"
WHERE
	Lower("p"."FirstName") LIKE @input_1 ESCAPE '~'

BeforeExecute
-- Firebird
DECLARE @input_1 VarChar(6) -- String
SET     @input_1 = '%test%'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE @input_1 ESCAPE '~'

