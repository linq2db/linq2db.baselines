﻿SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 2

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 2

