BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

