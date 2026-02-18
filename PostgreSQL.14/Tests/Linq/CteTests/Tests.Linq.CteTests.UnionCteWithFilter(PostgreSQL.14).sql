-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

WITH "BooksCte" ("Id", "Title", "Author_Name")
AS
(
	SELECT
		b."Id",
		b."Title",
		"a_Author"."Name"
	FROM
		"Books" b
			INNER JOIN "Authors" "a_Author" ON b."AuthorId" = "a_Author"."Id"
)
SELECT
	b_1."Id"
FROM
	(
		SELECT
			NULL::text as "Name",
			r."Title",
			r."Id"
		FROM
			"BooksCte" r
		UNION ALL
		SELECT
			t1."Author_Name" as "Name",
			NULL::text as "Title",
			NULL::Int as "Id"
		FROM
			"BooksCte" t1
	) b_1
WHERE
	b_1."Name" = 'Steven' OR b_1."Title" = 'Something'

