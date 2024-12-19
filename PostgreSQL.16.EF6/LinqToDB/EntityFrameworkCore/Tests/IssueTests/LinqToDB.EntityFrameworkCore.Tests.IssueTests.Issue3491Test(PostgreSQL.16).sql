--  PostgreSQL.15 PostgreSQL

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = ("PostgreTestTable"."Title", to_tsvector('test'))
FROM
	"PostgreTestTable" x
WHERE
	"PostgreTestTable"."Id" = 1 AND "PostgreTestTable"."Id" = x."Id"



