﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	n.ID,
	n.FirstName
FROM
	Person t1
		INNER JOIN (
			SELECT 3 AS ID, 'Janet' AS FirstName
			UNION ALL
			SELECT 4, 'Doe') n ON t1.PersonID = n.ID
ORDER BY
	n.ID

