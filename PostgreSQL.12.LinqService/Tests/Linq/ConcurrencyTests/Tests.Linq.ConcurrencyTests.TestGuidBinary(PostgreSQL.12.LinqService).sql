BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ConcurrencyGuidBinary"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ConcurrencyGuidBinary"
(
	"Id"    Int   NOT NULL,
	"Stamp" bytea     NULL,
	"Value" text      NULL,

	CONSTRAINT "PK_ConcurrencyGuidBinary" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\x3D667BBCDE0F27438F925D8CC3A11D11'::bytea
DECLARE @Value Text(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyGuidBinary"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	:Id,
	:Stamp,
	:Value
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\xDB902FAFE87D8B4D96701DDB2943B5BA'::bytea
DECLARE @Value Text(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Bytea(16) -- Binary
SET     @Stamp_1 = E'\\x3D667BBCDE0F27438F925D8CC3A11D11'::bytea

UPDATE
	"ConcurrencyGuidBinary"
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	"ConcurrencyGuidBinary"."Id" = :Id AND "ConcurrencyGuidBinary"."Stamp" = :Stamp_1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\x46A5BC500076AA4787C9FE98BA5440C8'::bytea
DECLARE @Value Text(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Bytea(16) -- Binary
SET     @Stamp_1 = E'\\xDB902FAFE87D8B4D96701DDB2943B5BA'::bytea

UPDATE
	"ConcurrencyGuidBinary"
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	"ConcurrencyGuidBinary"."Id" = :Id AND "ConcurrencyGuidBinary"."Stamp" = :Stamp_1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\x954B04AA5C5DED459879D2E0646C7F13'::bytea
DECLARE @Value Text(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Bytea(16) -- Binary
SET     @Stamp_1 = E'\\x0D6048A921DE744F8AC29516B287076E'::bytea

UPDATE
	"ConcurrencyGuidBinary"
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	"ConcurrencyGuidBinary"."Id" = :Id AND "ConcurrencyGuidBinary"."Stamp" = :Stamp_1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\xA57339BD2343D84D9F4FDF9F93E2A627'::bytea

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Bytea(16) -- Binary
SET     @Stamp = E'\\x46A5BC500076AA4787C9FE98BA5440C8'::bytea

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ConcurrencyGuidBinary"

