-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	serv."Id"
FROM
	"JoinedServiceAdsl" serv
		INNER JOIN "JoinedServiceClient" client ON serv."IdClient" = client."Id"

