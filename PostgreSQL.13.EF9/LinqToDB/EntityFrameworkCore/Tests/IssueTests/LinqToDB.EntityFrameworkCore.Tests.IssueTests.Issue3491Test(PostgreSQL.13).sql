-- PostgreSQL.13 PostgreSQL

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = (x_1."Title", to_tsvector('test'))
FROM
	"PostgreTestTable" x_1
		LEFT JOIN "PostgreTestTable" x ON x_1."Id" = x."Id"
WHERE
	x_1."Id" = 1 AND "PostgreTestTable"."Id" = x_1."Id"



