BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"m_1"."PersonID",
	"d"."PersonID",
	"d"."Diagnosis"
FROM
	"Person" "m_1"
		INNER JOIN "Patient" "d" ON "m_1"."PersonID" = "d"."PersonID"
WHERE
	Lower("m_1"."FirstName") LIKE CAST(@input AS VARCHAR(6)) ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE CAST(@input AS VARCHAR(6)) ESCAPE '~'

