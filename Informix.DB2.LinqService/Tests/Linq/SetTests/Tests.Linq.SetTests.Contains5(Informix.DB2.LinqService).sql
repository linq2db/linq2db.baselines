﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			p.ParentID + 1 = c_1.ParentID
	)

