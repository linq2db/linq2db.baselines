﻿BeforeExecute
BeginTransaction
BeforeExecute
--  Informix.DB2 Informix

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t2.ParentID
		FROM
			(
				SELECT FIRST 1
					a_Parent.ParentID
				FROM
					Child t1
						LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
			) t2
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
--  Informix.DB2 Informix

SELECT FIRST 1
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

BeforeExecute
RollbackTransaction
