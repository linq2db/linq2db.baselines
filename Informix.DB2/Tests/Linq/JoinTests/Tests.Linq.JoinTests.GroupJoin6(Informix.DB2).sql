﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	key_data_result.ParentID,
	gjd_c.ParentID,
	gjd_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = 1
	) key_data_result
		INNER JOIN Child gjd_c ON gjd_c.ParentID = key_data_result.ParentID + @n

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
	p.ParentID = 1

