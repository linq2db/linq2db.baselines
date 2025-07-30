BeforeExecute
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

