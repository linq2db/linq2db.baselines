﻿BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.ParentID, 
	(
		SELECT 
			Count(*)
		FROM
			Child c_1
		WHERE
			p.ParentID = c_1.ParentID AND c_1.ChildID <> p.ParentID * 10 + 1
	)
FROM
	Parent p
WHERE
	p.ParentID > 0

