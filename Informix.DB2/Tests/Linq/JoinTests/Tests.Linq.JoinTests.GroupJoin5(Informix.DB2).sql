﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	ch.ParentID,
	ch.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID,
			p.Value1
		FROM
			Parent p
		WHERE
			p.ParentID >= 1
	) key_data_result
		INNER JOIN Child ch ON ch.ParentID = key_data_result.ParentID
ORDER BY
	ch.ChildID

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID >= 1
ORDER BY
	p.ParentID

