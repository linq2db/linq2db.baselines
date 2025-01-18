BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4460Table
(
	Id,
	Code,
	Name,
	Surname
)
VALUES
(
	1,
	'GrandChild',
	'Tom',
	'Black'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1
WHERE
	t1.Code = 'GrandChild'

