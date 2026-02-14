-- PostgreSQL.15 PostgreSQL

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = (
		SELECT
			"PostgreTestTable"."Title",
			to_tsvector('test') as c1
		FROM
			"PostgreTestTable" x
		WHERE
			"PostgreTestTable"."Id" = x."Id"
	)
WHERE
	"PostgreTestTable"."Id" = 1



