BeforeExecute
-- Informix.DB2 Informix

SELECT
	p2.PersonID,
	RTRIM((p2.FirstName || chr(13) || chr(13) || chr(13)), chr(13))
FROM
	Person p2
WHERE
	p2.PersonID = 1

