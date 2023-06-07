BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1303

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1303
(
	ID       Int  NOT NULL,
	"Array"  BYTE     NULL,
	"Binary" BYTE     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = System.Byte[]
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = System.Byte[]

INSERT INTO Issue1303
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	Issue1303 t1
WHERE
	t1.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1303

