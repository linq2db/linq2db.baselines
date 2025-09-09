﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					Child c_1
				WHERE
					p.ParentID = c_1.ParentID AND c_1.ParentID > 1
			)
	)
FROM table(set{1})

