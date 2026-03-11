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
	(s.Enum IN ('THREE') OR s.Enum IS NULL)

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
	(s.Enum NOT IN ('TWO') AND s.Enum IS NOT NULL)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.Enum NOT IN ('THREE', 'TWO') OR s.Enum IS NULL)

