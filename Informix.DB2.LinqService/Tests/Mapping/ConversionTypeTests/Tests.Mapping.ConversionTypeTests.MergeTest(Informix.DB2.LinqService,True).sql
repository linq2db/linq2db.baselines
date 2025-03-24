BeforeExecute
--  Informix.DB2 Informix

MERGE INTO TrimTestTable Target
USING (
	SELECT 1::Int AS source_ID, '***OOO***'::NVarChar(50) AS source_Data FROM table(set{1})
	UNION ALL
	SELECT 2::Int, '***SSS***'::NVarChar(50) FROM table(set{1})) Source
(
	source_ID,
	source_Data
)
ON (Target.ID = Source.source_ID)

WHEN MATCHED THEN
UPDATE
SET
	"Data" = Source.source_Data

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	Source.source_ID,
	Source.source_Data
)

BeforeExecute
--  Informix.DB2 Informix

MERGE INTO TrimTestTable Target
USING (
	SELECT 3::Int AS source_ID, '***III***'::NVarChar(50) AS source_Data FROM table(set{1})) Source
(
	source_ID,
	source_Data
)
ON (Target.ID = Source.source_ID)

WHEN MATCHED THEN
UPDATE
SET
	"Data" = Source.source_Data

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	Source.source_ID,
	Source.source_Data
)

BeforeExecute
--  Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
--  Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

