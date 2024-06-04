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
SET     @Stamp = E'\\x6B8721C809A44448A272D065BCBF1AE7'::bytea
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
SET     @Stamp = E'\\x7B26869A93CD0747B861C2DA86C4D708'::bytea
DECLARE @Value Text(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Bytea(16) -- Binary
SET     @Stamp_1 = E'\\x6B8721C809A44448A272D065BCBF1AE7'::bytea

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
SET     @Stamp = E'\\x7DB899B7B90B754E8A803D63DDA1B7B2'::bytea
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
SET     @Stamp = E'\\x7B26869A93CD0747B861C2DA86C4D708'::bytea

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

