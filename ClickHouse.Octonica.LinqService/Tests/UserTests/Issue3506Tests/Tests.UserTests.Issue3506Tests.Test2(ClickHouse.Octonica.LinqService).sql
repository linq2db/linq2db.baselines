﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	catz cat
		INNER JOIN owners owner_1 ON cat.OwnerId IS NOT NULL AND cat.OwnerId = owner_1.Id

