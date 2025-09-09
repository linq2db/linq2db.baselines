BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	serv."Id"
FROM
	"Adsl" serv
		INNER JOIN "Client" client_1 ON serv."IdClient" = client_1."Id"

