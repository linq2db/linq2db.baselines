﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= 3
		))
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

