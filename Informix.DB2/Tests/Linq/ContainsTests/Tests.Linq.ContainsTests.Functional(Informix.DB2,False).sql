-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, -2)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, NULL)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, 2)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" NOT IN (NULL, 2)

-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" NOT IN (-1, 2)

