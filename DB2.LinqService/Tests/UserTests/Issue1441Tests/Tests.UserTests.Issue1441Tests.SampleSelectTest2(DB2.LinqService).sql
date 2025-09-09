BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"author"."Id",
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

