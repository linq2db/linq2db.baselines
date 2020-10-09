BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE BlobClass19
(
	Id        Int  NOT NULL,
	BlobValue Blob     NULL,

	CONSTRAINT PK_BlobClass19 PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO BlobClass19
(
	Id,
	BlobValue
)
VALUES
(
	1,
	HEXTORAW('010203')
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass19 t1
WHERE
	t1.Id = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Id, 
	t1.BlobValue
FROM
	BlobClass19 t1
WHERE
	t1.Id = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE BlobClass19

