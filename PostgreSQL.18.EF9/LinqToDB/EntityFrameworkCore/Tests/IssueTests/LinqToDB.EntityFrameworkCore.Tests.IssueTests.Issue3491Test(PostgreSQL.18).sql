-- PostgreSQL.18 PostgreSQL13

UPDATE
	"PostgreTestTable"
SET
	("Title", "SearchVector") = ("PostgreTestTable"."Title", to_tsvector('test'))
WHERE
	"PostgreTestTable"."Id" = 1



