BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3060Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3060Table"
(
	"Id"  BigInt NOT NULL,
	"Uid" bytea      NULL,

	CONSTRAINT "PK_Issue3060Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3060Table"

