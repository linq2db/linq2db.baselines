﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			11 = c_1.ParentID
	)
FROM table(set{1})

