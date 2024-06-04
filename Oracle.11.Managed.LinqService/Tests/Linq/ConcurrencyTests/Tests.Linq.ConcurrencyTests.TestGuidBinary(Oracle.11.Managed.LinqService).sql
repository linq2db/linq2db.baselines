BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('41E6342ECF072E419F23E73CFCA4D6FF')
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('DB7AE6E2B37C094C8542DF0783EB0357')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('41E6342ECF072E419F23E73CFCA4D6FF')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('762AA82B9C798E44993A2A4284A4A59A')
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('DB7AE6E2B37C094C8542DF0783EB0357')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

