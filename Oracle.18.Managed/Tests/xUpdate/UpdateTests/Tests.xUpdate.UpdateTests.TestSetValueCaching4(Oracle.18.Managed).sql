BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateSetTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "UpdateSetTest" ("Id", "Value1", "Value2", "Value3", "Value4", "Value5", "Value6") VALUES (1,HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'),10,6,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UpdateSetTest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

