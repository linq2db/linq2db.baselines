BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"author"."Id",
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

