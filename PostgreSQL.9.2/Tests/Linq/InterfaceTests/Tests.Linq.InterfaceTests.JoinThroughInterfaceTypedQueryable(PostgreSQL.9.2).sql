-- PostgreSQL.9.2 PostgreSQL
SELECT
	serv."Id"
FROM
	"JoinedServiceAdsl" serv
		INNER JOIN "JoinedServiceClient" client ON serv."IdClient" = client."Id"

