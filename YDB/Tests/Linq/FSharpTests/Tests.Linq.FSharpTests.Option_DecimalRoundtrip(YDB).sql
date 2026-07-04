-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Decimal(4, 2)
SET     $Value = Decimal('12.34', 22, 9)

INSERT INTO OptionDecimalTable
(
	Id,
	`Value`
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Value Decimal
SET     $Value = NULL

INSERT INTO OptionDecimalTable
(
	Id,
	`Value`
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	OptionDecimalTable r
WHERE
	r.Id = 1
LIMIT 2

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	OptionDecimalTable r
WHERE
	r.Id = 2
LIMIT 2

