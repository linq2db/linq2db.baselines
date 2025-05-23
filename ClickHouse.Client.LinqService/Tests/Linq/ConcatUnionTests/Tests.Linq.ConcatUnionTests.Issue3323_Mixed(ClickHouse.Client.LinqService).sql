﻿BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue3323Table
(
	Id,
	FistName,
	LastName,
	Text
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	concat(r.FistName, ' ', r.LastName) as Text
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id + 1 as Id,
	r_1.Text as Text
FROM
	Issue3323Table r_1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id + 1 as Id,
	r.Text
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id as Id,
	concat(r_1.FistName, ' ', r_1.LastName) as Text
FROM
	Issue3323Table r_1

