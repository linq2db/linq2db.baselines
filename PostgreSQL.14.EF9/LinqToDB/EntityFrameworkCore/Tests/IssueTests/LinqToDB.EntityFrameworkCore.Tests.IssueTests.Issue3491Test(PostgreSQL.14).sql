-- PostgreSQL.9.5 PostgreSQL

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = (
		SELECT
			"PostgreTestTable"."Title",
			to_tsvector('test')
		FROM
			"PostgreTestTable" x
		WHERE
			"PostgreTestTable"."Id" = x."Id"
	)
WHERE
	"PostgreTestTable"."Id" = 1



