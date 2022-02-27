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
USING (	SELECT 1::Int FROM table(set{1})) Source
(
	Id
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Target.Id = 2,
	Target."Value" = '3'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ReviewIndexes

