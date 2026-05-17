-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

