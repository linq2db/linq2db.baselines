﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID
FROM
	(
		SELECT
			t2.c1,
			t2.Value1
		FROM
			(
				SELECT
					a_ParentID2.ParentID as c1,
					a_ParentID2.Value1
				FROM
					Child t1
						INNER JOIN Parent a_ParentID2 ON t1.ParentID = a_ParentID2.ParentID
			) t2
		GROUP BY
			t2.c1,
			t2.Value1
	) cp
		INNER JOIN Child c_1
			INNER JOIN Parent a_ParentID2_1 ON c_1.ParentID = a_ParentID2_1.ParentID
		ON (a_ParentID2_1.ParentID = cp.c1 OR a_ParentID2_1.ParentID IS NULL AND cp.c1 IS NULL) AND (a_ParentID2_1.Value1 = cp.Value1 OR a_ParentID2_1.Value1 IS NULL AND cp.Value1 IS NULL)

