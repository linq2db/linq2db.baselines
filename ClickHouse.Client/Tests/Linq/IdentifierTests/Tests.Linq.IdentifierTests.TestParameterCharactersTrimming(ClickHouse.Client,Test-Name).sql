﻿BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	testparams
UPDATE
	`Test-Name` = 2
WHERE
	`Test-Name` = 1

