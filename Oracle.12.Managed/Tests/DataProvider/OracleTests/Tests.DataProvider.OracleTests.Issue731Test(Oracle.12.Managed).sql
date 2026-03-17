-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @BinaryGuid Blob -- Object
SET     @BinaryGuid = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @BlobValue Blob -- Object
SET     @BlobValue = HEXTORAW('010203')
DECLARE @RawValue Raw(3) -- Binary
SET     @RawValue = HEXTORAW('040506')

INSERT INTO "Issue731Table"
(
	"Id",
	"Guid",
	"BinaryGuid",
	"BlobValue",
	"RawValue"
)
VALUES
(
	:Id,
	:Guid,
	:BinaryGuid,
	:BlobValue,
	:RawValue
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Guid",
	t1."BinaryGuid",
	t1."BlobValue",
	t1."RawValue"
FROM
	"Issue731Table" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

