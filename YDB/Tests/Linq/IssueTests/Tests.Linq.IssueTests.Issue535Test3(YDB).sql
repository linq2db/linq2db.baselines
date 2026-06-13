-- YDB Ydb

SELECT
	cb.Id as Id,
	cb.Name as Name,
	cb.ContactEmail as ContactEmail,
	cb.Enabled as Enabled
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'u

