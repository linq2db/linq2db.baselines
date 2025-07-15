BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

