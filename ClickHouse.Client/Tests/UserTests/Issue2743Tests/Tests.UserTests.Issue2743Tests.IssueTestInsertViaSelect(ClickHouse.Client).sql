﻿BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MessageEventDTOTb2
(
	Id
)
SELECT
	x.Id
FROM
	MessageEventDTO x

