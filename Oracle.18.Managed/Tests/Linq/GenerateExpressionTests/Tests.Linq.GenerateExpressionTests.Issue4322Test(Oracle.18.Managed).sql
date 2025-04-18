﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."position" as "Position_1"
FROM
	"entities" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS X, 10 AS Y FROM sys.dual) t
		WHERE
			x."position".x > t.X
	)
FETCH NEXT :take ROWS ONLY

