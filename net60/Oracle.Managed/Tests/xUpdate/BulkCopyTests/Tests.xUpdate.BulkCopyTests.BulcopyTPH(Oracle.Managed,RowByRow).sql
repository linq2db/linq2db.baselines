BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 Varchar2(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator Int32
SET     @Discriminator = 1

INSERT INTO "TPHTable"
(
	"Id",
	"Value1",
	"Discriminator"
)
VALUES
(
	:Id,
	:Value1,
	:Discriminator
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value2 Varchar2(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator Int32
SET     @Discriminator = 2

INSERT INTO "TPHTable"
(
	"Id",
	"Value2",
	"Discriminator"
)
VALUES
(
	:Id,
	:Value2,
	:Discriminator
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @NullableBool Varchar2(1) -- String
SET     @NullableBool = 'Y'
DECLARE @Value3 Varchar2(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator Int32
SET     @Discriminator = 3

INSERT INTO "TPHTable"
(
	"Id",
	"NullableBool",
	"Value3",
	"Discriminator"
)
VALUES
(
	:Id,
	:NullableBool,
	:Value3,
	:Discriminator
)

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12
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
	x."Discriminator" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
	x."Discriminator" = 2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
	x."Discriminator" = 3
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
	x."Value1" = 'Str1'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
	x."Value2" = 'Str2'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
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
	x."Value3" = 'Str3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TPHTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

