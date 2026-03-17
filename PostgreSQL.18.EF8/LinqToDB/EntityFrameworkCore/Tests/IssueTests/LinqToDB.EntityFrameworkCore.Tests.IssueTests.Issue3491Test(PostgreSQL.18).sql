-- PostgreSQL.18 PostgreSQL

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = ("PostgreTestTable"."Title", to_tsvector('test'))
WHERE
	"PostgreTestTable"."Id" = 1



