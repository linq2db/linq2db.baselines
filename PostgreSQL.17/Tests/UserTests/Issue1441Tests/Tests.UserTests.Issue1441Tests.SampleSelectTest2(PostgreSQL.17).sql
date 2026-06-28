-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

