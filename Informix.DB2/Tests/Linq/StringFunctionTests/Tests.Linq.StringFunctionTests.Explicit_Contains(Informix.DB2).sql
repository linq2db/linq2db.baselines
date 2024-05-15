BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%paranoid%' ESCAPE '~'

