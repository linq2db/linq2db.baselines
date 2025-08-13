BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 0::Int AS Id, 1::Int AS Field1, 2::Int AS Field2, 4::Int AS Field4 FROM table(set{1})) Source
(
	Id,
	Field1,
	Field2,
	Field4
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	Source.Id,
	Source.Field1,
	Source.Field2,
	Source.Field4
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3,
	t1.Field4,
	t1.Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 10::Int AS Id, 11::Int AS Field1, 12::Int AS Field2, 14::Int AS Field4 FROM table(set{1})) Source
(
	Id,
	Field1,
	Field2,
	Field4
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	Source.Id,
	Source.Field1,
	Source.Field2,
	Source.Field4
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3,
	t1.Field4,
	t1.Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 20::Int AS Id, 21::Int AS Field1, 22::Int AS Field2, 24::Int AS Field4 FROM table(set{1})
	UNION ALL
	SELECT 30::Int, 31::Int, 32::Int, 34::Int FROM table(set{1})) Source
(
	Id,
	Field1,
	Field2,
	Field4
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	Source.Id,
	Source.Field1,
	Source.Field2,
	Source.Field4
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3,
	t1.Field4,
	t1.Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

