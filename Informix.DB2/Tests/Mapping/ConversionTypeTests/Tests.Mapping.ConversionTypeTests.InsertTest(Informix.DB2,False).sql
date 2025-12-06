-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

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

-- Informix.DB2 Informix

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

