BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('54883510B9BCB949AB343F1F0D98E887')
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('EE66C5FF91310E4CA5CBE3A4957E52F1')
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Raw(16) -- Binary
SET     @Stamp_1 = HEXTORAW('54883510B9BCB949AB343F1F0D98E887')

UPDATE
	"ConcurrencyGuidBinary" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('11083D6E6FFE5448B997D0BBA0B26851')
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Raw(16) -- Binary
SET     @Stamp = HEXTORAW('EE66C5FF91310E4CA5CBE3A4957E52F1')

DELETE FROM
	"ConcurrencyGuidBinary" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyGuidBinary" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyGuidBinary"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

