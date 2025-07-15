BeforeExecute
-- Informix.DB2 Informix
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = {1,2,3}

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

