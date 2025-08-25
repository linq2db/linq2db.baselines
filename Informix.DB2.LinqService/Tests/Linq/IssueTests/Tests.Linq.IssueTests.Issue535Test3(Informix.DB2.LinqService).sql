BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	cb.Enabled
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

