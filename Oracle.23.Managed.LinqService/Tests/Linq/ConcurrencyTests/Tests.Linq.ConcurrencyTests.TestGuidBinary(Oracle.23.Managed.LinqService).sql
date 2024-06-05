BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('C78CF92452C5D143B91B2459CA7626AA')
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('CAEBA953C9B5B14BA4E75B20C6AAA7DC')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('C78CF92452C5D143B91B2459CA7626AA')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('AF17F01ACF5114478D11CB3DF4A96F78')
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('CAEBA953C9B5B14BA4E75B20C6AAA7DC')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

