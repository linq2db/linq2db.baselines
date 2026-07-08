-- PostgreSQL.13 PostgreSQL12

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

