﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	concat(toString(COUNT(*)), ' items have not been processed, e.g. #', toString(MIN(s.PersonID)), '.')
FROM
	Person s
WHERE
	s.LastName <> 'ERROR' AND COUNT(*) > 0

