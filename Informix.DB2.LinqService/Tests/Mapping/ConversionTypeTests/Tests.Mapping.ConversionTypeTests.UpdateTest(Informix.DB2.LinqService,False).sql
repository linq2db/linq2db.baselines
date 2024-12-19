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
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

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
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

UPDATE
	TrimTestTable t1
SET
	"Data" = @Data
WHERE
	t1.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	TrimTestTable t
SET
	"Data" = @Data
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	TrimTestTable t
SET
	"Data" = @Data
WHERE
	t."Data" = @p

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

