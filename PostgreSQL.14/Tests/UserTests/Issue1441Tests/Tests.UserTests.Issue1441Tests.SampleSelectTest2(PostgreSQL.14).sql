-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

