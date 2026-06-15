-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -10
DECLARE $Value Text(7) -- String
SET     $Value = 'initial'u

INSERT INTO ConcurrencyAutoIncrement
(
	Id,
	Stamp,
	`Value`
)
VALUES
(
	$Id,
	$Stamp,
	$Value
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

-- YDB Ydb
DECLARE $Value Text(7) -- String
SET     $Value = 'value 1'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyAutoIncrement.Id = $Id AND ConcurrencyAutoIncrement.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

-- YDB Ydb
DECLARE $Value Text(7) -- String
SET     $Value = 'value 2'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyAutoIncrement.Id = $Id AND ConcurrencyAutoIncrement.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

-- YDB Ydb
DECLARE $Value Text(7) -- String
SET     $Value = 'value 3'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyAutoIncrement.Id = $Id AND ConcurrencyAutoIncrement.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyAutoIncrement
WHERE
	ConcurrencyAutoIncrement.Id = $Id AND ConcurrencyAutoIncrement.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -8

DELETE FROM
	ConcurrencyAutoIncrement
WHERE
	ConcurrencyAutoIncrement.Id = $Id AND ConcurrencyAutoIncrement.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyAutoIncrement t1

