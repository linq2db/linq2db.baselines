BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	serv."Id"
FROM
	"Adsl" serv
		INNER JOIN "Client" client_1 ON serv."IdClient" = client_1."Id"

