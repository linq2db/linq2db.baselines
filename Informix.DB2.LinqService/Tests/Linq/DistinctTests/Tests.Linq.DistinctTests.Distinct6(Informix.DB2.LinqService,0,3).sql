﻿BeforeExecute
-- Informix.DB2 Informix

SELECT DISTINCT
	Nvl(p.Value1, p.ParentID + 1),
	4
FROM
	Parent p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

