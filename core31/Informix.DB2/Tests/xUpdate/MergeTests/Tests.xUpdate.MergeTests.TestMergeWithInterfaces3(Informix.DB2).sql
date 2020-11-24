BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE ReviewIndexes
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO ReviewIndexes Target
USING (	SELECT 1::Int, '2'::NVarChar(255) FROM table(set{1})) Source
(
	Id,
	Value_1
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Target."Value" = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.Id,
	Source.Value_1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ReviewIndexes

