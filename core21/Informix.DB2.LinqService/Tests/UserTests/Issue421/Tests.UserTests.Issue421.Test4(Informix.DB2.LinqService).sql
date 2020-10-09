BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE BlobClass20
(
	Id        Int  NOT NULL,
	BlobValue byte     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = System.Byte[]

INSERT INTO BlobClass20
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

SELECT FIRST 1 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass20 t1
WHERE
	t1.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass20 t1
WHERE
	t1.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE BlobClass20

