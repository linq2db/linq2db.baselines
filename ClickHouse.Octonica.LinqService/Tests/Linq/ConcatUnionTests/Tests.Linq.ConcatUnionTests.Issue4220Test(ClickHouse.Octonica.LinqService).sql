BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConcreteA
(
	Id,
	AOnly
)
VALUES
(
	1,
	'a only'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConcreteB
(
	Id,
	BOnly
)
VALUES
(
	2,
	'b only'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.AOnly,
	toInt32(NULL) as Id_1,
	toString(NULL) as BOnly
FROM
	ConcreteA e
UNION ALL
SELECT
	toInt32(NULL) as Id,
	toString(NULL) as AOnly,
	e_1.Id as Id_1,
	e_1.BOnly as BOnly
FROM
	ConcreteB e_1

