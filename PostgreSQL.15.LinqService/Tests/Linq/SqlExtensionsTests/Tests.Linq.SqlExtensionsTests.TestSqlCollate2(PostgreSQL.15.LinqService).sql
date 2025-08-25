BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	'1' || t1."FirstName" COLLATE "POSIX" || '2'
FROM
	"Person" t1

