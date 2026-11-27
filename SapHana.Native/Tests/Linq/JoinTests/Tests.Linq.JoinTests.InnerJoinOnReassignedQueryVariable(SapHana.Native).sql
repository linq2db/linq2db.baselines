-- SapHana.Native SapHana
SELECT
	"author"."Id",
	"author"."Name"
FROM
	"JoinAuthors" "author"
		INNER JOIN "JoinBooks" "book" ON "book"."AuthorId" = "author"."Id"

