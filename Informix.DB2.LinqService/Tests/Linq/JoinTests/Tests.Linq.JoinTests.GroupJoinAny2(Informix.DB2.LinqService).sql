﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ParentID,
	EXISTS(
		SELECT
			*
		FROM
			Child t1_1
		WHERE
			t1.ParentID = t1_1.ParentID
	)
FROM
	Parent t1

