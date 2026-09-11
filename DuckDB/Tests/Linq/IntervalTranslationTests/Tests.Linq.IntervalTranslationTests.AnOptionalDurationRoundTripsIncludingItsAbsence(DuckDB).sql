-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Grace  -- Int64
SET     $Grace = 4567
DECLARE $Required  -- Int64
SET     $Required = 4567

INSERT INTO OptionalDurationRow
(
	Id,
	Grace,
	Required
)
VALUES
(
	$Id,
	$Grace,
	$Required
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Grace  -- Int64
SET     $Grace = NULL
DECLARE $Required  -- Int64
SET     $Required = 4567

INSERT INTO OptionalDurationRow
(
	Id,
	Grace,
	Required
)
VALUES
(
	$Id,
	$Grace,
	$Required
)

-- DuckDB
SELECT
	t1.Id,
	t1.Grace,
	t1.Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

-- DuckDB
DECLARE $Grace  -- Int64
SET     $Grace = NULL

UPDATE
	OptionalDurationRow
SET
	Grace = $Grace
WHERE
	OptionalDurationRow.Id = 1

-- DuckDB
DECLARE $Grace  -- Int64
SET     $Grace = 4567

UPDATE
	OptionalDurationRow
SET
	Grace = $Grace
WHERE
	OptionalDurationRow.Id = 2

-- DuckDB
SELECT
	t1.Id,
	t1.Grace,
	t1.Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

