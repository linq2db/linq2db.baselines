-- DB2 DB2.LUW DB2LUW
SELECT
	"serv"."Id"
FROM
	"JoinedServiceAdsl" "serv"
		INNER JOIN "JoinedServiceClient" "client" ON "serv"."IdClient" = "client"."Id"

