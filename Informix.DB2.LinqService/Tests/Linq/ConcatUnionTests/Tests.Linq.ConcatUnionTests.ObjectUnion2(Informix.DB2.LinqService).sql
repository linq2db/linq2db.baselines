﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	NVL(p1.ParentID, NULL),
	p1.Value1
FROM
	Parent p1
WHERE
	p1.ParentID > 3
UNION
SELECT
	NULL::Int,
	NULL::Int
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

