BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1303
(
	ID       Int  NOT NULL,
	"Array"  BYTE     NULL,
	"Binary" BYTE     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Array_1 VarBinary(3) -- Binary
SET     @Array_1 = System.Byte[]
DECLARE @Binary_1 VarBinary(2) -- Binary
SET     @Binary_1 = System.Byte[]

INSERT INTO Issue1303
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1303

