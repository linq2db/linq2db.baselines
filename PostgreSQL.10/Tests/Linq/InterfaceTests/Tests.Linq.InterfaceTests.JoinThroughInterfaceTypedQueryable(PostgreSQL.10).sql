-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	serv."Id"
FROM
	"JoinedServiceAdsl" serv
		INNER JOIN "JoinedServiceClient" client ON serv."IdClient" = client."Id"

