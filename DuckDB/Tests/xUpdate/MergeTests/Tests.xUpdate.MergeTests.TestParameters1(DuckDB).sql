-- DuckDB

DELETE FROM
	TestMerge1 t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Field1  -- Object
SET     $Field1 = NULL
DECLARE $Field2  -- Object
SET     $Field2 = NULL
DECLARE $Field4  -- Object
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Field1  -- Int32
SET     $Field1 = 2
DECLARE $Field2  -- Object
SET     $Field2 = NULL
DECLARE $Field4  -- Object
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $Field1  -- Object
SET     $Field1 = NULL
DECLARE $Field2  -- Int32
SET     $Field2 = 3
DECLARE $Field4  -- Int32
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 4
DECLARE $Field1  -- Int32
SET     $Field1 = 5
DECLARE $Field2  -- Int32
SET     $Field2 = 6
DECLARE $Field4  -- Object
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB

DELETE FROM
	TestMerge2 t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $Field1  -- Object
SET     $Field1 = NULL
DECLARE $Field2  -- Int32
SET     $Field2 = 3
DECLARE $Field4  -- Object
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 4
DECLARE $Field1  -- Int32
SET     $Field1 = 5
DECLARE $Field2  -- Int32
SET     $Field2 = 7
DECLARE $Field4  -- Int32
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 5
DECLARE $Field1  -- Int32
SET     $Field1 = 10
DECLARE $Field2  -- Int32
SET     $Field2 = 4
DECLARE $Field4  -- Object
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 6
DECLARE $Field1  -- Object
SET     $Field1 = NULL
DECLARE $Field2  -- Object
SET     $Field2 = NULL
DECLARE $Field4  -- Int32
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
	CAST($Id AS INTEGER),
	CAST($Field1 AS INTEGER),
	CAST($Field2 AS INTEGER),
	CAST($Field4 AS INTEGER)
)

-- DuckDB
DECLARE $Val2  -- Int32
SET     $Val2 = 2
DECLARE $Val5  -- Int32
SET     $Val5 = 5
DECLARE $Val4  -- Int32
SET     $Val4 = 34
DECLARE $Val1  -- Int32
SET     $Val1 = 1
DECLARE $Val3  -- Int32
SET     $Val3 = 3
DECLARE $p  -- Int32
SET     $p = 125

MERGE INTO TestMerge1 Target
USING (
	SELECT
		t1.Id,
		t1.Field1,
		CAST($Val2 AS INTEGER) as Field7
	FROM
		TestMerge2 t1
	WHERE
		t1.Id <> CAST($Val5 AS INTEGER)
) Source
(
	Id,
	Field1,
	Field7
)
ON (Target.Id = Source.Id OR Target.Id = CAST($Val4 AS INTEGER))

WHEN NOT MATCHED AND Source.Field7 = CAST($Val1 AS INTEGER) + Source.Id THEN
INSERT
(
	Id,
	Field1
)
VALUES
(
	Source.Id + CAST($Val5 AS INTEGER),
	Source.Field1
)

WHEN MATCHED AND Source.Id = CAST($Val3 AS INTEGER) THEN
UPDATE
SET
	Field4 = CAST($Val5 AS INTEGER)
WHEN MATCHED AND Target.Field3 = CAST($p AS INTEGER) THEN DELETE

