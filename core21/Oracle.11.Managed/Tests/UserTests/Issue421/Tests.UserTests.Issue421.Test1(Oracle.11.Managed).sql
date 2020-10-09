BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE BlobClass
(
	Id        Int  NOT NULL,
	BlobValue Blob     NULL,

	CONSTRAINT PK_BlobClass PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BlobValue Raw(3) -- Binary
SET     @BlobValue = HEXTORAW('010203')

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	:Id,
	:BlobValue
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BlobValue Raw(3) -- Binary
SET     @BlobValue = HEXTORAW('030201')

UPDATE
	BlobClass
SET
	BlobClass.BlobValue = :BlobValue
WHERE
	BlobClass.Id = 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE BlobClass

