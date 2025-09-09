BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

