BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value,
	OtherValue
)
WITH CTE_1 AS
(
	SELECT
		t1.Id,
		t1.Value as Value_1,
		t1.OtherValue
	FROM
		InsertTestClass t1
)
SELECT
	t2.Id,
	t2.Value_1,
	t2.OtherValue
FROM
	CTE_1 t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

