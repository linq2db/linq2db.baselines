﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	p1.ParentID,
	p1.Value1,
	t1.ParentID,
	t1.Sum1
FROM
	Parent p1
		LEFT JOIN (
			SELECT
				p.ParentID,
				Sum(p.ParentID) as Sum1
			FROM
				Parent p
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						Child ch
					WHERE
						ch.ParentID = p.ParentID
				)
			GROUP BY
				p.ParentID
		) t1 ON t1.ParentID = p1.ParentID

