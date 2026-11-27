-- Firebird.4 Firebird4
SELECT
	"serv"."Id"
FROM
	"JoinedServiceAdsl" "serv"
		INNER JOIN "JoinedServiceClient" "client" ON "serv"."IdClient" = "client"."Id"

