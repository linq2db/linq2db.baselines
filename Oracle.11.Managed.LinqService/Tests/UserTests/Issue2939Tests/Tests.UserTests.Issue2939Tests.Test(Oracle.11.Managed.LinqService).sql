BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	serv."Id"
FROM
	"Adsl" serv
		INNER JOIN "Client" client_1 ON serv."IdClient" = client_1."Id"

