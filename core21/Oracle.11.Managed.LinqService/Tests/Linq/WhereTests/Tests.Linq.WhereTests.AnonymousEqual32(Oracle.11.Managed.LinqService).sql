﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	ch.ParentID, 
	ch.ChildID
FROM
	Child ch
WHERE
	(2 = ch.ParentID AND 21 = ch.ChildID)

