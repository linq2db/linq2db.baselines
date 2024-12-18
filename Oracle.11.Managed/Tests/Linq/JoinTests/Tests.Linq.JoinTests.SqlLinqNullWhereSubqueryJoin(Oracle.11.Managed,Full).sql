﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			p1."ParentID",
			p1."Value1"
		FROM
			"Parent" p1
		WHERE
			ROWNUM <= :take
	) p1_1
		FULL JOIN (
			SELECT
				p2."ParentID",
				p2."Value1"
			FROM
				"Parent" p2
			WHERE
				ROWNUM <= :take_1
		) t1 ON p1_1."ParentID" = t1."ParentID" AND (p1_1."Value1" = t1."Value1" AND p1_1."Value1" IS NOT NULL AND t1."Value1" IS NOT NULL OR p1_1."Value1" IS NULL AND t1."Value1" IS NULL)

