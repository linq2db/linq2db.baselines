BeforeExecute
-- Informix.DB2 Informix (asynchronously)

MERGE INTO ReviewIndexes Target
USING (
	SELECT 1::Int AS Id FROM table(set{1})) Source
(
	Id
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Id = 2,
	"Value" = '3'

