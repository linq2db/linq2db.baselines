BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BlobClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BlobClass
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
SET     @BlobValue = {1,2,3}

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

SELECT FIRST 1
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = {3,2,1}

UPDATE
	BlobClass t1
SET
	BlobValue = @BlobValue
WHERE
	t1.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BlobClass

