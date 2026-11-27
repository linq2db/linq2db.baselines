-- PostgreSQL.9.5 PostgreSQL
SELECT
	author."Id",
	author."Name"
FROM
	"JoinAuthors" author
		INNER JOIN "JoinBooks" book ON book."AuthorId" = author."Id"

