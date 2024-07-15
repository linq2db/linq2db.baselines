BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3060Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3060Table
(
	Id    BigInt NOT NULL,
	"Uid" BYTE       NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Uid VarBinary(16) -- Binary
SET     @Uid = {61,102,123,188,222,15,39,67}
-- value above truncated for logging
DECLARE @Id BigInt(8) -- Int64
SET     @Id = 0

UPDATE
	Issue3060Table t1
SET
	"Uid" = @Uid
WHERE
	t1.Id = @Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3060Table

