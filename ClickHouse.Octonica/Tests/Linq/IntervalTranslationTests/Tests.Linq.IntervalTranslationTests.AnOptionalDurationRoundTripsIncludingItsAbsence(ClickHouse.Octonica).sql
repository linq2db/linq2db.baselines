-- ClickHouse.Octonica ClickHouse
INSERT INTO OptionalDurationRow
(
	Id,
	Grace,
	Required
)
VALUES
(
	1,
	toInt64(4567),
	toInt64(4567)
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO OptionalDurationRow
(
	Id,
	Grace,
	Required
)
VALUES
(
	2,
	NULL,
	toInt64(4567)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Grace,
	t1.Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	OptionalDurationRow
UPDATE
	Grace = NULL
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	OptionalDurationRow
UPDATE
	Grace = toInt64(4567)
WHERE
	Id = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Grace,
	t1.Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

