BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ReviewIndexes

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ReviewIndexes
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO ReviewIndexes Target
USING (
	SELECT 1::Int AS source_Id FROM table(set{1})) Source
(
	source_Id
)
ON (Target.Id = Source.source_Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	2,
	'3'
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ReviewIndexes

