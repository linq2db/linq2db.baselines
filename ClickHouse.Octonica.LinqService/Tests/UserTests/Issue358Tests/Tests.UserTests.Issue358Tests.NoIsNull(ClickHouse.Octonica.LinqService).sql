﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum2 <> 0

