BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.PersonID,
	'123' || p.FirstName || '0123451234'
FROM
	Person p
WHERE
	p.PersonID = 1 AND 1 = CharIndex('321', Reverse(Substr('123' || p.FirstName || '0123451234', 6, 6))) AND
	CharIndex('123', Substr('123' || p.FirstName || '0123451234', 1, 11), 6) <> 0

