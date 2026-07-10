-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	'1' || t1."FirstName" COLLATE "POSIX" || '2'
FROM
	"Person" t1

