BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE '%persecution' ESCAPE '~'

