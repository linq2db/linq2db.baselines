-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'FOUR')

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', NULL)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'TWO')

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN (NULL, 'TWO')

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum NOT IN ('THREE', 'TWO')

