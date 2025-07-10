BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	Coalesce(m_2."MiddleName", 'default2')
FROM
	"Person" p
		LEFT JOIN (
			SELECT
				Coalesce(m_1."MiddleName", 'default1') as "MiddleName",
				m_1."PersonID" + 1 as c1
			FROM
				"Person" m_1
		) m_2 ON p."PersonID" = m_2.c1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

