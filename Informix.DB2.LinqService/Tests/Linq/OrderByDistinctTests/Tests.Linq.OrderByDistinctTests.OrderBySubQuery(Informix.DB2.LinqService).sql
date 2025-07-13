﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT
	t_1.DuplicateData,
	(
		SELECT
			COUNT(*)
		FROM
			OrderByDistinctData c_1
		WHERE
			c_1.DuplicateData = t_1.DuplicateData OR c_1.DuplicateData IS NULL AND t_1.DuplicateData IS NULL
	)
FROM
	(
		SELECT FIRST @take
			t.Id,
			t.DuplicateData
		FROM
			OrderByDistinctData t
	) t_1
ORDER BY
	t_1.Id DESC

