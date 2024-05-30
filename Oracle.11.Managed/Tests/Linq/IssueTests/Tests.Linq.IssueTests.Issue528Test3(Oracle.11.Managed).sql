﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."FirstName",
	d."FirstName",
	d."PersonID",
	d."LastName",
	d."MiddleName",
	d."Gender"
FROM
	(
		SELECT DISTINCT
			t1."FirstName"
		FROM
			"Person" t1
	) m_1
		INNER JOIN "Person" d ON m_1."FirstName" = d."FirstName"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName"
FROM
	"Person" t1
GROUP BY
	t1."FirstName"

