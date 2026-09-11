-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

