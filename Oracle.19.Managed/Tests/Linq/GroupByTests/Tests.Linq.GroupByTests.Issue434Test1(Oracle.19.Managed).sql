BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(6) -- String
SET     @p = '%test%'

SELECT
	m_1."PersonID",
	d."PersonID",
	d."Diagnosis"
FROM
	"Person" m_1
		INNER JOIN "Patient" d ON m_1."PersonID" = d."PersonID"
WHERE
	Lower(m_1."FirstName") LIKE :p ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(6) -- String
SET     @p = '%test%'

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE :p ESCAPE '~'

