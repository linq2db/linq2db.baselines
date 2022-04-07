BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TPHTable"
(
	"Id"            Int         NOT NULL,
	"Discriminator" Int         NOT NULL,
	"Value1"        VarChar(50)     NULL,
	"Value2"        VarChar(50)     NULL,
	"NullableBool"  VarChar(1)      NULL,
	"Value3"        VarChar(50)     NULL,

	CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "NullableBool", "Value3") VALUES (1,1,'Str1',NULL,NULL,NULL)
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "NullableBool", "Value3") VALUES (2,2,NULL,'Str2',NULL,NULL)
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "NullableBool", "Value3") VALUES (3,3,NULL,NULL,'Y','Str3')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."Discriminator",
	t1."Value1",
	t1."Value2",
	t1."NullableBool",
	t1."Value3"
FROM
	"TPHTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 3 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value1" = 'Str1' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value2" = 'Str2' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TPHTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

