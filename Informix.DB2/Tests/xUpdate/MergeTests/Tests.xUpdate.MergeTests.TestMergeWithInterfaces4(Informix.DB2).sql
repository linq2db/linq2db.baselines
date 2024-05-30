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
	SELECT 1::Int AS source_Id, '2'::NVarChar(255) AS source_Value FROM table(set{1})) Source
(
	source_Id,
	source_Value
)
ON (Target.Id = Source.source_Id)

WHEN MATCHED THEN
UPDATE
SET
	"Value" = Source.source_Value

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.source_Id,
	Source.source_Value
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ReviewIndexes

