BeforeExecute
--  Informix.DB2 Informix

MERGE INTO ReviewIndexes Target
USING (
	SELECT 1::Int AS source_Id FROM table(set{1})) Source
(
	source_Id
)
ON (Target.Id = Source.source_Id)

WHEN MATCHED THEN
UPDATE
SET
	Id = 2,
	"Value" = '3'

