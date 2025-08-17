BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'FOUR')

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', NULL)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'TWO')

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN (NULL, 'TWO')

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN ('THREE', 'TWO')

