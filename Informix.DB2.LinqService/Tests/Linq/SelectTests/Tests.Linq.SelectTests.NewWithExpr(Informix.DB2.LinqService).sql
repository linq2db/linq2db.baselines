BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.PersonID,
	RTRIM((p.FirstName || '1' || chr(13) || chr(13) || chr(13)), chr(13))
FROM
	Person p

