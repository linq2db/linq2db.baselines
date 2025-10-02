BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t1.Id,
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

