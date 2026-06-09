-- YDB Ydb

SELECT
	serv.Id as Id
FROM
	Adsl serv
		INNER JOIN Client client_1 ON serv.IdClient = client_1.Id

