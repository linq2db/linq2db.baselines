-- YDB Ydb

DELETE FROM
	TestMerge1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Field1 Int32
SET     $Field1 = NULL
DECLARE $Field2 Int32
SET     $Field2 = NULL
DECLARE $Field4 Int32
SET     $Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Field1 Int32
SET     $Field1 = 2
DECLARE $Field2 Int32
SET     $Field2 = NULL
DECLARE $Field4 Int32
SET     $Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3
DECLARE $Field1 Int32
SET     $Field1 = NULL
DECLARE $Field2 Int32
SET     $Field2 = 3
DECLARE $Field4 Int32
SET     $Field4 = 203

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 4
DECLARE $Field1 Int32
SET     $Field1 = 5
DECLARE $Field2 Int32
SET     $Field2 = 6
DECLARE $Field4 Int32
SET     $Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb

DELETE FROM
	TestMerge2

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3
DECLARE $Field1 Int32
SET     $Field1 = NULL
DECLARE $Field2 Int32
SET     $Field2 = 3
DECLARE $Field4 Int32
SET     $Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 4
DECLARE $Field1 Int32
SET     $Field1 = 5
DECLARE $Field2 Int32
SET     $Field2 = 7
DECLARE $Field4 Int32
SET     $Field4 = 214

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 5
DECLARE $Field1 Int32
SET     $Field1 = 10
DECLARE $Field2 Int32
SET     $Field2 = 4
DECLARE $Field4 Int32
SET     $Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 6
DECLARE $Field1 Int32
SET     $Field1 = NULL
DECLARE $Field2 Int32
SET     $Field2 = NULL
DECLARE $Field4 Int32
SET     $Field4 = 216

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	$Id,
	$Field1,
	$Field2,
	$Field4
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Field1 as Field1,
	t1.Field2 as Field2,
	t1.Field3 as Field3,
	t1.Field4 as Field4,
	t1.Field5 as Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Field1 as Field1,
	t1.Field2 as Field2,
	t1.Field3 as Field3,
	t1.Field4 as Field4,
	t1.Field5 as Field5
FROM
	TestMerge2 t1
ORDER BY
	t1.Id

