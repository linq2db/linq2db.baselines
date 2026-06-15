-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x7B\x7D's
DECLARE $ColumnNullable Yson -- Object
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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x7B\x7D's
DECLARE $p3 Yson -- Object
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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x6E\x75\x6C\x6C's
DECLARE $ColumnNullable Yson -- Object
SET     $ColumnNullable = '\x6E\x75\x6C\x6C's

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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x6E\x75\x6C\x6C's
DECLARE $p3 Yson -- Object
SET     $p3 = '\x6E\x75\x6C\x6C's

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x66\x61\x6C\x73\x65's
DECLARE $ColumnNullable Yson -- Object
SET     $ColumnNullable = '\x74\x72\x75\x65's

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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x66\x61\x6C\x73\x65's
DECLARE $p3 Yson -- Object
SET     $p3 = '\x74\x72\x75\x65's

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x2D\x31\x32\x2E\x33\x34\x35's
DECLARE $ColumnNullable Yson -- Object
SET     $ColumnNullable = '\x31\x32\x33's

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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x2D\x31\x32\x2E\x33\x34\x35's
DECLARE $p3 Yson -- Object
SET     $p3 = '\x31\x32\x33's

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x7B\x01\x10\xD1\x82\xD0\xB5\xD1\x81\xD1\x82\x3D\x01\x14\xD0\xB2\xD0\xB0\xD0\xBB\xD1\x8C\xD1\x8E\x7D's
DECLARE $ColumnNullable Yson -- Object
SET     $ColumnNullable = '\x7B\x01\x08\x70\x72\x6F\x70\x3D\x04\x7D's

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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x7B\x01\x10\xD1\x82\xD0\xB5\xD1\x81\xD1\x82\x3D\x01\x14\xD0\xB2\xD0\xB0\xD0\xBB\xD1\x8C\xD1\x8E\x7D's
DECLARE $p3 Yson -- Object
SET     $p3 = '\x7B\x01\x08\x70\x72\x6F\x70\x3D\x04\x7D's

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x7B\x7D's
DECLARE $ColumnNullable Yson -- Object
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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x7B\x7D's
DECLARE $p3 Yson -- Object
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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Yson -- Object
SET     $Column = '\x7B\x01\x08\x70\x72\x6F\x70\x3D\x05\x7D's
DECLARE $ColumnNullable Yson -- Object
SET     $ColumnNullable = '\x7B\x01\x10\xD1\x82\xD0\xB5\xD1\x81\xD1\x82\x3D\x01\x14\xD0\xB2\xD0\xB0\xD0\xBB\xD1\x8C\xD1\x8E\x7D's

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

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Yson -- Object
SET     $p2 = '\x7B\x01\x08\x70\x72\x6F\x70\x3D\x05\x7D's
DECLARE $p3 Yson -- Object
SET     $p3 = '\x7B\x01\x10\xD1\x82\xD0\xB5\xD1\x81\xD1\x82\x3D\x01\x14\xD0\xB2\xD0\xB0\xD0\xBB\xD1\x8C\xD1\x8E\x7D's

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` t1

