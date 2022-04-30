﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t4."ParentID",
	t4."Value1"
FROM
	(
		SELECT
			t3."ParentID",
			t3."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t2."ParentID",
					t2."Value1"
				FROM
					(
						SELECT DISTINCT
							t1."ParentID",
							t1."Value1"
						FROM
							"Parent" t1
					) t2
				ORDER BY
					t2."ParentID"
			) t3
		WHERE
			ROWNUM <= :take
	) t4
WHERE
	t4.RN > :skip

