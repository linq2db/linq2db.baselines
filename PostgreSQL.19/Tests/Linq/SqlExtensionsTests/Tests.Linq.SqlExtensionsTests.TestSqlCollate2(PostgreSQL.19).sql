-- PostgreSQL.19 PostgreSQL12

SELECT
	'1' || t1."FirstName" COLLATE "POSIX" || '2'
FROM
	"Person" t1

