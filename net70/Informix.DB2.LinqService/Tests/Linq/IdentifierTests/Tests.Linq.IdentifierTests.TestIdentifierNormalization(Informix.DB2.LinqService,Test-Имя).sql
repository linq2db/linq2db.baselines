BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Test-Имя"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Test-Имя"
(
	"Test-Имя" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Test Integer(4) -- Int32
SET     @Test = 2

UPDATE
	"Test-Имя"
SET
	"Test-Имя"."Test-Имя" = @Test
WHERE
	"Test-Имя"."Test-Имя" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Test-Имя"

