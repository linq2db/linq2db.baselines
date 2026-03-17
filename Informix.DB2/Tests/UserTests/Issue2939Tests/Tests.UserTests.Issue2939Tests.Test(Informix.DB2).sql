-- Informix.DB2 Informix

SELECT
	serv.Id
FROM
	Adsl serv
		INNER JOIN Client client_1 ON serv.IdClient = client_1.Id

