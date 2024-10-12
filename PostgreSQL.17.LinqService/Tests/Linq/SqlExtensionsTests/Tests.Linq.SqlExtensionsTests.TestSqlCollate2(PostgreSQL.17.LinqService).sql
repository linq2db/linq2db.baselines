BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	'1' || t1."FirstName" COLLATE "POSIX" || '2'
FROM
	"Person" t1

