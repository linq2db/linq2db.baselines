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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = System.Byte[]

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	@Id,
	@BlobValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = System.Byte[]

UPDATE
	BlobClass
SET
	BlobClass.BlobValue = @BlobValue
WHERE
	BlobClass.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE BlobClass

