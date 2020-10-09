BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	TestMerge1 t1

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO TestMerge1 Target
USING (	SELECT 0 Id,1 Field1,2 Field2,4 Field4 FROM sys.dual) Source
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
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

DELETE FROM
	TestMerge1 t1

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO TestMerge1 Target
USING (	SELECT 10 Id,11 Field1,12 Field2,14 Field4 FROM sys.dual) Source
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
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

DELETE FROM
	TestMerge1 t1

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO TestMerge1 Target
USING (	SELECT 20 Id,21 Field1,22 Field2,24 Field4 FROM sys.dual
	UNION ALL
	SELECT 30,31,32,34 FROM sys.dual) Source
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
-- Oracle.Managed Oracle12

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

