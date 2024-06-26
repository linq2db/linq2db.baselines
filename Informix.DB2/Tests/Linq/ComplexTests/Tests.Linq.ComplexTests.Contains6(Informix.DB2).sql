﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			c_1.ParentID = p.ParentID
	)

