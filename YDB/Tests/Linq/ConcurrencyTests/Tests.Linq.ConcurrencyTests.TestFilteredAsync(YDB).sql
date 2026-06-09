-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -10
DECLARE $Value Text(7) -- String
SET     $Value = 'initial'u

INSERT INTO ConcurrencyFiltered
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
	ConcurrencyFiltered t1

-- YDB Ydb
DECLARE $Value Text(7) -- String
SET     $Value = 'value 1'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	Stamp = ConcurrencyFiltered.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyFiltered.Id = 2 AND ConcurrencyFiltered.Id = $Id AND
	ConcurrencyFiltered.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyFiltered t1

-- YDB Ydb
DECLARE $Value Text(7) -- String
SET     $Value = 'value 2'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	Stamp = ConcurrencyFiltered.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyFiltered.Id = 1 AND ConcurrencyFiltered.Id = $Id AND
	ConcurrencyFiltered.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyFiltered t1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyFiltered
WHERE
	ConcurrencyFiltered.Id = 2 AND ConcurrencyFiltered.Id = $Id AND
	ConcurrencyFiltered.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyFiltered t1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyFiltered
WHERE
	ConcurrencyFiltered.Id = 1 AND ConcurrencyFiltered.Id = $Id AND
	ConcurrencyFiltered.Stamp = $Stamp

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyFiltered t1

