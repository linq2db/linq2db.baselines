﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = 1
	)
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = -1
	)
FROM SYSTABLES

