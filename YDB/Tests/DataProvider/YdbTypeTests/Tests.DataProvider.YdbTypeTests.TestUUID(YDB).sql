-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('00000000-0000-0000-0000-000000000000')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Uuid('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Uuid -- Guid
SET     $Column = Uuid('00000000-0000-0000-0000-000000000000')
DECLARE $ColumnNullable Uuid -- Guid
SET     $ColumnNullable = NULL

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('00000000-0000-0000-0000-000000000000')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Uuid -- Guid
SET     $p2 = Uuid('00000000-0000-0000-0000-000000000000')
DECLARE $p3 Uuid -- Guid
SET     $p3 = NULL

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('00000000-0000-0000-0000-000000000000')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('00000000-0000-0000-0000-000000000000')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('00000000-0000-0000-0000-000000000000')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $nullableValue Uuid -- Guid
SET     $nullableValue = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Uuid -- Guid
SET     $Column = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $ColumnNullable Uuid -- Guid
SET     $ColumnNullable = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $nullableValue Uuid -- Guid
SET     $nullableValue = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Uuid -- Guid
SET     $p2 = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $p3 Uuid -- Guid
SET     $p3 = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $nullableValue Uuid -- Guid
SET     $nullableValue = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $nullableValue Uuid -- Guid
SET     $nullableValue = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Uuid -- Guid
SET     $value = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $nullableValue Uuid -- Guid
SET     $nullableValue = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

