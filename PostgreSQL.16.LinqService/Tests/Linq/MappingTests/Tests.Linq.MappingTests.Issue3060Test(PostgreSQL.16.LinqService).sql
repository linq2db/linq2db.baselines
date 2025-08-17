BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Uid Bytea(16) -- Binary
SET     @Uid = E'\\x3D667BBCDE0F27438F925D8CC3A11D11'::bytea
DECLARE @Id Bigint -- Int64
SET     @Id = 0

UPDATE
	"Issue3060Table"
SET
	"Uid" = :Uid
WHERE
	"Issue3060Table"."Id" = :Id

