﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2

SELECT
	left_1."ParentID",
	right_2."ParentID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) left_1
		FULL JOIN (
			SELECT
				right_1."ParentID"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id2
		) right_2 ON right_2."ParentID" = left_1."ParentID"
ORDER BY
	CASE
		WHEN left_1."ParentID" IS NOT NULL THEN left_1."ParentID"
		ELSE NULL
	END

