﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	p1.ParentID,
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
UNION ALL
SELECT
	Nvl(p2.Value1, 0),
	NULL::Int,
	NULL::Int
FROM
	Parent p2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

