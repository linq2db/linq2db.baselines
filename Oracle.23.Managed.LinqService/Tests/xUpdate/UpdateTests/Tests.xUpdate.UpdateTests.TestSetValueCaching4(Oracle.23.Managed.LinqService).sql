BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateSetTest"';
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
		CREATE TABLE "UpdateSetTest"
		(
			"Id"     Int     NOT NULL,
			"Value1" Raw(16) NOT NULL,
			"Value2" Int     NOT NULL,
			"Value3" Int     NOT NULL,
			"Value4" Raw(16)     NULL,
			"Value5" Int         NULL,
			"Value6" Int         NULL,

			CONSTRAINT "PK_UpdateSetTest" PRIMARY KEY ("Id")
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
DECLARE @Value1 Raw(16) -- Binary
SET     @Value1 = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')
DECLARE @Value2 Int32
SET     @Value2 = 10
DECLARE @Value3 Int32
SET     @Value3 = 6
DECLARE @Value4 Raw -- Binary
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = NULL
DECLARE @Value6 Int32
SET     @Value6 = NULL

INSERT INTO "UpdateSetTest"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5",
	"Value6"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4,
	:Value5,
	:Value6
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value4 Raw(16) -- Binary
SET     @Value4 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value4" = :Value4
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value4 Raw(16) -- Binary
SET     @Value4 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value4" = :Value4
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateSetTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

