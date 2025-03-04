﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT FIRST @take
	t3.ParentID,
	t3.ChildID
FROM
	(
		SELECT
			x.ParentID,
			t2.ChildID
		FROM
			Parent x
				INNER JOIN (
					SELECT FIRST 10
						c_2.ParentID,
						c_2.ChildID
					FROM
						(
							SELECT
								c_1.ParentID,
								c_1.ChildID
							FROM
								Child c_1
							UNION
							SELECT
								t1.ParentID,
								t1.ChildID
							FROM
								Child t1
						) c_2
					ORDER BY
						c_2.ParentID
				) t2 ON t2.ParentID = x.ParentID
	) t3
ORDER BY
	t3.ParentID

