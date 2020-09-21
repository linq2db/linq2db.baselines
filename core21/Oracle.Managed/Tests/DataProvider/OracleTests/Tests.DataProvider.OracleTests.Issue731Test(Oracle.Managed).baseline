BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue731Table
(
	Id         Int     NOT NULL,
	Guid       Raw(16) NOT NULL,
	BinaryGuid BLOB    NOT NULL,
	BlobValue  BLOB        NULL,
	RawValue   Raw(5)      NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @BinaryGuid Blob -- Object
SET     @BinaryGuid = Cast('0d6048a921de744f8ac29516b287076e' as raw(16))
DECLARE @BlobValue Blob -- Object
SET     @BlobValue = HEXTORAW('010203')
DECLARE @RawValue Blob -- Object
SET     @RawValue = HEXTORAW('040506')

INSERT INTO Issue731Table
(
	Id,
	Guid,
	BinaryGuid,
	BlobValue,
	RawValue
)
VALUES
(
	:Id,
	:Guid,
	:BinaryGuid,
	:BlobValue,
	:RawValue
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.Id,
	t1.Guid,
	t1.BinaryGuid,
	t1.BlobValue,
	t1.RawValue
FROM
	Issue731Table t1
WHERE
	t1.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue731Table

