﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p_2."val"
FROM
	(
		SELECT
			p."ParentID" as "id",
			CAST(1 AS Char(1)) as "val"
		FROM
			"Parent" p
		UNION
		SELECT
			p_1."ParentID" as "id",
			CAST(0 AS Char(1)) as "val"
		FROM
			"Parent" p_1
		UNION
		SELECT
			ch."ParentID" as "id",
			CAST(0 AS Char(1)) as "val"
		FROM
			"Child" ch
	) p_2

