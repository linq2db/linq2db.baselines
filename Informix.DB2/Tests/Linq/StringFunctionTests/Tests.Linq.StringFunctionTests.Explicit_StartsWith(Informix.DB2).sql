-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'Hall%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'hall%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE 'hall%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE 'hall%' ESCAPE '~'

