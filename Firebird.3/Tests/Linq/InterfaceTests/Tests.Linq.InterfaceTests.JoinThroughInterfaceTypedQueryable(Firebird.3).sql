-- Firebird.3 Firebird3
SELECT
	"serv"."Id"
FROM
	"JoinedServiceAdsl" "serv"
		INNER JOIN "JoinedServiceClient" "client" ON "serv"."IdClient" = "client"."Id"

