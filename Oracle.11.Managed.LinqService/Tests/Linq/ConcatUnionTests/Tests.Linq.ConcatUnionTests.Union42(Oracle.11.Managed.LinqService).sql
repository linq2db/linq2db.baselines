﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	p_1."val"
FROM
	(
		SELECT
			p."ParentID" as "id",
			CAST(1 AS Char(1)) as "val"
		FROM
			"Parent" p
		UNION
		SELECT
			ch."ParentID" as "id",
			CAST(0 AS Char(1)) as "val"
		FROM
			"Child" ch
	) p_1

