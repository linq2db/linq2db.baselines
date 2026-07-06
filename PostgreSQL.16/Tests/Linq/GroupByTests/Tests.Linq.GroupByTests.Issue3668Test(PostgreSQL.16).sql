-- PostgreSQL.16 PostgreSQL.15
-- Batch 1
-- id = 1
-- name = test
SELECT
	m_1."PersonID",
	m_1."FirstName",
	m_1."PersonID",
	m_1."LastName",
	m_1."MiddleName",
	m_1."Gender"
FROM
	"Person" m_1
WHERE
	m_1."PersonID" = :id AND m_1."LastName" <> :name OR
	m_1."FirstName" <> :name AND m_1."PersonID" - 1 = :id

-- Batch 2
-- id = 1
-- name = test
SELECT
	x."PersonID"
FROM
	"Person" x
WHERE
	x."PersonID" = :id AND x."LastName" <> :name OR x."FirstName" <> :name AND x."PersonID" - 1 = :id
