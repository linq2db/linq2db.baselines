﻿BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO TableWithIdentitySrc
(
	Value
)
VALUES
(
	1
)

BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
SELECT
	t1.Value + 123
FROM
	TableWithIdentitySrc t1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1

