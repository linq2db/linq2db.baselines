BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (	SELECT 0::Int,1::Int,2::Int,4::Int FROM table(set{1})) Source
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
USING (	SELECT 10::Int,11::Int,12::Int,14::Int FROM table(set{1})) Source
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
USING (	SELECT 20::Int,21::Int,22::Int,24::Int FROM table(set{1})
	UNION ALL
	SELECT 30::Int,31::Int,32::Int,34::Int FROM table(set{1})) Source
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

