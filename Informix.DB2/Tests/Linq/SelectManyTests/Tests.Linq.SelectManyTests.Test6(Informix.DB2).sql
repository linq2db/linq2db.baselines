﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Child.ParentID,
	a_Child.ChildID
FROM
	(
		SELECT
			g_1.ParentID,
			g_1.ChildID
		FROM
			Parent t1,
			GrandChild g_1,
			Parent c_1
	) sub
		LEFT JOIN Child a_Child ON (sub.ParentID = a_Child.ParentID OR sub.ParentID IS NULL AND a_Child.ParentID IS NULL) AND (sub.ChildID = a_Child.ChildID OR sub.ChildID IS NULL AND a_Child.ChildID IS NULL)

