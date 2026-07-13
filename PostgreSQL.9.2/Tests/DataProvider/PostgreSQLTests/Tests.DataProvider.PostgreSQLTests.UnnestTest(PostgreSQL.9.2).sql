-- PostgreSQL.9.2 PostgreSQL
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

