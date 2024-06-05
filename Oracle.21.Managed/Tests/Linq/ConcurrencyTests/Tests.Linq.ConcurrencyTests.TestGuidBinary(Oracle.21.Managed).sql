BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcurrencyGuidBinary"
		(
			"Id"    Int          NOT NULL,
			"Stamp" Raw(16)          NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_ConcurrencyGuidBinary" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Value Varchar2(7) -- String
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('5ADF2F2A85810243AABCF43EC30659F2')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('78748C6EDEA62B419CF57D97A071B268')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('5ADF2F2A85810243AABCF43EC30659F2')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('6704C9A1CAE62948982FB340F4A4C933')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('78748C6EDEA62B419CF57D97A071B268')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

