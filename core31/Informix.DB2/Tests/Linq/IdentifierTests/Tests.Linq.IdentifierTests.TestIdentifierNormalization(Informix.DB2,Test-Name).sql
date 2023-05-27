BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Test-Name"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Test-Name"
(
	"Test-Name" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TestName Integer(4) -- Int32
SET     @TestName = 2

UPDATE
	"Test-Name"
SET
	"Test-Name"."Test-Name" = @TestName
WHERE
	"Test-Name"."Test-Name" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Test-Name"

