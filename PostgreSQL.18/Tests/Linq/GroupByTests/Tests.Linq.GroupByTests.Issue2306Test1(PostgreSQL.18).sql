﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."PersonID",
	m_1."FirstName",
	m_1."PersonID",
	m_1."LastName",
	m_1."MiddleName",
	m_1."Gender"
FROM
	"Person" m_1

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PersonID"
FROM
	"Person" t1
GROUP BY
	t1."PersonID"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."PersonID",
	m_1."FirstName",
	m_1."PersonID",
	m_1."LastName",
	m_1."MiddleName",
	m_1."Gender"
FROM
	"Person" m_1

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PersonID"
FROM
	"Person" t1
GROUP BY
	t1."PersonID"

