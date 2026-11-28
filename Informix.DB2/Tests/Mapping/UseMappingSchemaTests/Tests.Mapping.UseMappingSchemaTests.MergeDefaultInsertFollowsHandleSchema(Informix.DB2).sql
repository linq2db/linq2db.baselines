-- Informix.DB2 Informix
MERGE INTO SourceSchemaRow Target
USING (
	SELECT 1::Int AS Id, 5::Int AS Value_1, 'a'::NVarChar(255) AS Name FROM table(set{1})) Source
(
	Id,
	Value_1,
	Name
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value",
	Name
)
VALUES
(
	Source.Id,
	Source.Value_1,
	Source.Name
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value",
	t1.Name
FROM
	SourceSchemaRow t1

