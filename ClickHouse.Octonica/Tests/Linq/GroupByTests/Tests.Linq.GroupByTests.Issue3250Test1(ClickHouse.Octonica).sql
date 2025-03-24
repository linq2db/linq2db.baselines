﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	concat(toString(COUNT(*)), ' items have not been processed, e.g. #', toString(minOrNull(g_1.PersonID)), '.')
FROM
	Person g_1
WHERE
	g_1.LastName <> 'ERROR'
HAVING
	COUNT(*) > 0

