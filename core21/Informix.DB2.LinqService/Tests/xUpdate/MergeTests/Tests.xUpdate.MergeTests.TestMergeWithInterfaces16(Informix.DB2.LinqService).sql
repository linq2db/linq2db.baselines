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
WHEN MATCHED THEN DELETE

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ReviewIndexes

