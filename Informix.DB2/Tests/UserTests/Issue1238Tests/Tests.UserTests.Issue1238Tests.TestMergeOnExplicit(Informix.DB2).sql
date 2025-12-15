-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

-- Informix.DB2 Informix

MERGE INTO InheritanceParent Target
USING (
	SELECT 143::Int AS Key1, NULL::NVarChar(255) AS Key2, 1::Int AS Data_1 FROM table(set{1})) Source
(
	Key1,
	Key2,
	Data_1
)
ON (Target.InheritanceParentId = Source.Key1 AND (Target.Name = Source.Key2 OR Target.Name IS NULL AND Source.Key2 IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	TypeDiscriminator = Source.Data_1

WHEN NOT MATCHED THEN
INSERT
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	Source.Key1,
	Source.Key2,
	Source.Data_1
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

-- Informix.DB2 Informix

MERGE INTO InheritanceParent Target
USING (
	SELECT 143::Int AS Key1, NULL::NVarChar(255) AS Key2, 1::Int AS Data_1 FROM table(set{1})) Source
(
	Key1,
	Key2,
	Data_1
)
ON (Target.InheritanceParentId = Source.Key1 AND (Target.Name = Source.Key2 OR Target.Name IS NULL AND Source.Key2 IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	TypeDiscriminator = Source.Data_1

WHEN NOT MATCHED THEN
INSERT
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	Source.Key1,
	Source.Key2,
	Source.Data_1
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

