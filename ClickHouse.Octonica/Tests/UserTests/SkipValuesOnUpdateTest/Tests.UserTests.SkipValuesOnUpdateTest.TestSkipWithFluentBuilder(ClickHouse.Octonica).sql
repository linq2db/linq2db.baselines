-- ClickHouse.Octonica ClickHouse
INSERT INTO SkipOnUpdateFluent
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	NULL,
	2
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	SkipOnUpdateFluent
UPDATE
	Name = 'Franki',
	Age = 18
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	SkipOnUpdateFluent
UPDATE
	Name = 'Jack'
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

