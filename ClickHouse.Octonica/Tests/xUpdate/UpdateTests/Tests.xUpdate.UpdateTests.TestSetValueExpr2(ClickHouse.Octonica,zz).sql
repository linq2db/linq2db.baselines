BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	TextData
UPDATE
	Items1 = concat(Items1, 'zz'),
	Items2 = concat(Items2, 'zz')
WHERE
	Id >= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Items1,
	t1.Items2
FROM
	TextData t1
ORDER BY
	t1.Id

