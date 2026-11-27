-- YDB Ydb
SELECT
	serv.Id as Id
FROM
	JoinedServiceAdsl serv
		INNER JOIN JoinedServiceClient client ON serv.IdClient = client.Id

