BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Key_1",
	d."FirstName",
	d."PersonID",
	d."LastName",
	d."MiddleName",
	d."Gender"
FROM
	(
		SELECT DISTINCT
			t1."FirstName" as "Key_1"
		FROM
			"Person" t1
	) m_1
		INNER JOIN "Person" d ON m_1."Key_1" = d."FirstName"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."FirstName"
FROM
	"Person" t1
GROUP BY
	t1."FirstName"

