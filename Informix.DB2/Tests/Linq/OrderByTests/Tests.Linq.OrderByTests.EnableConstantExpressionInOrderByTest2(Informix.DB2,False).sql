﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID IN (1, 3)
ORDER BY
	p.LastName DESC

