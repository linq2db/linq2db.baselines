-- PostgreSQL.18 PostgreSQL12
DECLARE @Uid Bytea(16) -- Binary
SET     @Uid = E'\\x3D667BBCDE0F27438F925D8CC3A11D11'::bytea
DECLARE @Id Bigint -- Int64
SET     @Id = 0

UPDATE
	"Blob16AsGuidTable"
SET
	"Uid" = :Uid
WHERE
	"Blob16AsGuidTable"."Id" = :Id

