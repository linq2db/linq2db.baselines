BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE BlobClass
(
	Id        Int  NOT NULL,
	BlobValue byte     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = System.Byte[]

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	1,
	@BlobValue
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE BlobClass

