﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION
SELECT
	p2.ParentID,
	p2.Value1
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

