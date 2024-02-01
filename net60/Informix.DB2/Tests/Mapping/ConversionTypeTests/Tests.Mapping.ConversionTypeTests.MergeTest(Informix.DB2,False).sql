BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TrimTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TrimTestTable
(
	ID     Int          NOT NULL,
	"Data" NVarChar(50)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***XXX***'

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Data VarChar(9) -- String
SET     @Data = '***VVV***'

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TrimTestTable Target
USING (
	SELECT 1::Int AS ID, '***OOO***'::NVarChar(50) AS Data_1 FROM table(set{1})
	UNION ALL
	SELECT 2::Int, '***SSS***'::NVarChar(50) FROM table(set{1})) Source
(
	ID,
	Data_1
)
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	Target."Data" = Source.Data_1

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	Source.ID,
	Source.Data_1
)

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO TrimTestTable Target
USING (
	SELECT 3::Int AS ID, '***III***'::NVarChar(50) AS Data_1 FROM table(set{1})) Source
(
	ID,
	Data_1
)
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	Target."Data" = Source.Data_1

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	Source.ID,
	Source.Data_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TrimTestTable

