-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Grace Int64
SET     $Grace = 4567l
DECLARE $Required Int64
SET     $Required = 4567l

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

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Grace Int64
SET     $Grace = NULL
DECLARE $Required Int64
SET     $Required = 4567l

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

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Grace as Grace,
	t1.Required as Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

-- YDB Ydb
DECLARE $Grace Int64
SET     $Grace = NULL

UPDATE
	OptionalDurationRow
SET
	Grace = $Grace
WHERE
	OptionalDurationRow.Id = 1

-- YDB Ydb
DECLARE $Grace Int64
SET     $Grace = 4567l

UPDATE
	OptionalDurationRow
SET
	Grace = $Grace
WHERE
	OptionalDurationRow.Id = 2

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Grace as Grace,
	t1.Required as Required
FROM
	OptionalDurationRow t1
ORDER BY
	t1.Id

