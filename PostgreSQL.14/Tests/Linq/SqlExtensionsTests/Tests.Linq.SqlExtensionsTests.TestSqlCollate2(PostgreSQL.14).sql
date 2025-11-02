-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	'1' || t1."FirstName" COLLATE "POSIX" || '2'
FROM
	"Person" t1

