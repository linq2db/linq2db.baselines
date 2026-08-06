-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Uid_1 Blob -- Object
SET     @Uid_1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Id Int64
SET     @Id = 0

UPDATE
	"Issue3060Table" t1
SET
	"Uid" = :Uid_1
WHERE
	t1."Id" = :Id

