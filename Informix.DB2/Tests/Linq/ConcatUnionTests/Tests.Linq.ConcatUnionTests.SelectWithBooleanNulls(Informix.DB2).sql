﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	),
	x.ParentID <> 0
FROM
	Parent x
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t2
	),
	NULL::BOOLEAN::BOOLEAN
FROM
	Parent x_1

