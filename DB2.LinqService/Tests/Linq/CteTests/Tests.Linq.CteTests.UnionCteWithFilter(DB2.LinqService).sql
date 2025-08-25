BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

WITH "BooksCte" ("Book_Id", "Book_Title", "Author_Name")
AS
(
	SELECT
		"b"."Id",
		"b"."Title",
		"a_Author"."Name"
	FROM
		"Books" "b"
			INNER JOIN "Authors" "a_Author" ON "b"."AuthorId" = "a_Author"."Id"
)
SELECT
	"b_1"."Id"
FROM
	(
		SELECT
			CAST(NULL AS NVarChar(255)) as "Name",
			"r"."Book_Title" as "Title",
			"r"."Book_Id" as "Id"
		FROM
			"BooksCte" "r"
		UNION ALL
		SELECT
			"t1"."Author_Name" as "Name",
			CAST(NULL AS NVarChar(255)) as "Title",
			CAST(NULL AS Int) as "Id"
		FROM
			"BooksCte" "t1"
	) "b_1"
WHERE
	"b_1"."Name" = 'Steven' OR "b_1"."Title" = 'Something'

