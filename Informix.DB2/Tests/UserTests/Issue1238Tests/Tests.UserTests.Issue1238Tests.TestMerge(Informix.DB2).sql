BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO InheritanceParent Target
USING (
	SELECT 143::Int AS source_Key1, NULL::NVarChar(255) AS source_Key2, 1::Int AS source_Data FROM table(set{1})) Source
(
	source_Key1,
	source_Key2,
	source_Data
)
ON (Target.InheritanceParentId = Source.source_Key1 AND
(Target.Name = Source.source_Key2 OR Target.Name IS NULL AND Source.source_Key2 IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	TypeDiscriminator = Source.source_Data

WHEN NOT MATCHED THEN
INSERT
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	Source.source_Key1,
	Source.source_Key2,
	Source.source_Data
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO InheritanceParent Target
USING (
	SELECT 143::Int AS source_Key1, NULL::NVarChar(255) AS source_Key2, 1::Int AS source_Data FROM table(set{1})) Source
(
	source_Key1,
	source_Key2,
	source_Data
)
ON (Target.InheritanceParentId = Source.source_Key1 AND
(Target.Name = Source.source_Key2 OR Target.Name IS NULL AND Source.source_Key2 IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	TypeDiscriminator = Source.source_Data

WHEN NOT MATCHED THEN
INSERT
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	Source.source_Key1,
	Source.source_Key2,
	Source.source_Data
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

BeforeExecute
DisposeTransaction
