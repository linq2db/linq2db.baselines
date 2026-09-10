-- PostgreSQL.11 PostgreSQL
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

