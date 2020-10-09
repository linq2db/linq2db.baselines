BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CacheTestTable
(
	Id    Int NOT NULL,
	Value Int NOT NULL,

	CONSTRAINT PK_CacheTestTable PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

MERGE INTO CacheTestTable Target
USING (	SELECT 1 Id,1 Value_1 FROM sys.dual
	UNION ALL
	SELECT 2,2 FROM sys.dual) Source
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Target.Value = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Value
)
VALUES
(
	Source.Id,
	Source.Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.Value
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

MERGE INTO CacheTestTable Target
USING (	SELECT 1 Id,1 Value_1 FROM sys.dual
	UNION ALL
	SELECT 2,4 FROM sys.dual
	UNION ALL
	SELECT 3,3 FROM sys.dual) Source
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Target.Value = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Value
)
VALUES
(
	Source.Id,
	Source.Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.Value
FROM
	CacheTestTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CacheTestTable

