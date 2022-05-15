﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @n_1 Int32
SET     @n_1 = 300001
DECLARE @n Int32
SET     @n = 300000

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" > 1
			) t1
		WHERE
			ROWNUM <= :n_1
	) t2
WHERE
	t2.RN > :n

