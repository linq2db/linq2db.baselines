﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName"
FROM
	"Person" t1
GROUP BY
	t1."FirstName"

