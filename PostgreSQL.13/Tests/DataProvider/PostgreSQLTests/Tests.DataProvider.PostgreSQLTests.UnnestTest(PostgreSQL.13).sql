-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

