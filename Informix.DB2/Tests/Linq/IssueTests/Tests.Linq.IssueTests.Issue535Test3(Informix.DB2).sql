BeforeExecute
-- Informix.DB2 Informix

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	cb.Enabled
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

