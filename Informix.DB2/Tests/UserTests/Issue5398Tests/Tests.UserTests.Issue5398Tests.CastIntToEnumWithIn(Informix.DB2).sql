-- Informix.DB2 Informix

SELECT
	i.Id
FROM
	TestEnumTable i
WHERE
	i."Value" IN (1, 3)
ORDER BY
	i.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TestEnumTable t1

