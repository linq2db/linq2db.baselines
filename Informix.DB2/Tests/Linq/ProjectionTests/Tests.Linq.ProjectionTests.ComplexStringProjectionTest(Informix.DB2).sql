-- Informix.DB2 Informix
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO StringTestTable
(
	ID,
	"Data"
)
VALUES
(
	2,
	@data::NVarChar(255)
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t.ID,
	t."Data"
FROM
	StringTestTable t
WHERE
	t.ID = 2

