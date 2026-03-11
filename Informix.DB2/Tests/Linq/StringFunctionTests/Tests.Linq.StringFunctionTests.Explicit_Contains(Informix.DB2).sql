-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Paranoid%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%paranoid%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%paranoid%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%paranoid%' ESCAPE '~'

