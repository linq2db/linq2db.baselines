-- DB2 DB2.LUW DB2LUW
SELECT
	"author"."Id",
	"author"."Name"
FROM
	"JoinAuthors" "author"
		INNER JOIN "JoinBooks" "book" ON "book"."AuthorId" = "author"."Id"

