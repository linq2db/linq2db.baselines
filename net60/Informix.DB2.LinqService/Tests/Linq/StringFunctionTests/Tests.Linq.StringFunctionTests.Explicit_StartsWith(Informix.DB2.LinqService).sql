﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Patient r
WHERE
	Lower(r.Diagnosis) LIKE 'hall%' ESCAPE '~'

