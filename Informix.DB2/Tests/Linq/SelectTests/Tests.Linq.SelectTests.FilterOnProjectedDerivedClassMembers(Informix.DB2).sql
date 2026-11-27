-- Informix.DB2 Informix
SELECT
	q.Id,
	q.Name,
	q.ContactEmail,
	Nvl(q.Enabled, 'f'::BOOLEAN)
FROM
	EnumClientRecord q
WHERE
	q.ClientType = 'Client' AND (q.Name LIKE '%test%' ESCAPE '~' OR q.ContactEmail LIKE '%test%' ESCAPE '~')

