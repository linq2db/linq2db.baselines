﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 11
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM SYSTABLES

