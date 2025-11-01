-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	p.Diagnosis LIKE '%Persecution' ESCAPE '~' AND p.PersonID = 2

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	NOT p.Diagnosis LIKE '%Persecution' ESCAPE '~' AND
	p.PersonID = 2

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	p.Diagnosis LIKE '%persecution' ESCAPE '~' AND p.PersonID = 2

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	NOT p.Diagnosis LIKE '%persecution' ESCAPE '~' AND
	p.PersonID = 2

