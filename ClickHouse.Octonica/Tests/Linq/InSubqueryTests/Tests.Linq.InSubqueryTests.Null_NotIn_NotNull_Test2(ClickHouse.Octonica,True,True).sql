﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IS NULL OR t.ID NOT IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

