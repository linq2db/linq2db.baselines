-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	s."Id"
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

