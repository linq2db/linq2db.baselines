﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

