-- PostgreSQL.9.3 PostgreSQL
SELECT
	serv."Id"
FROM
	"JoinedServiceAdsl" serv
		INNER JOIN "JoinedServiceClient" client ON serv."IdClient" = client."Id"

