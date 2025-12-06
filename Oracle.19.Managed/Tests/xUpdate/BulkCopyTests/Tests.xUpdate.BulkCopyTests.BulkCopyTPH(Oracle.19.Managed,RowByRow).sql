-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Discriminator Int32
SET     @Discriminator = 1
DECLARE @Value1 Varchar2(4) -- String
SET     @Value1 = 'Str1'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1"
)
VALUES
(
	:Id,
	:Discriminator,
	:Value1
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Discriminator Int32
SET     @Discriminator = 2
DECLARE @Value2 Varchar2(4) -- String
SET     @Value2 = 'Str2'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value2"
)
VALUES
(
	:Id,
	:Discriminator,
	:Value2
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Discriminator Int32
SET     @Discriminator = 3
DECLARE @Value3 Varchar2(4) -- String
SET     @Value3 = 'Str3'
DECLARE @NullableBool Varchar2(1) -- String
SET     @NullableBool = 'Y'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value3",
	"NullableBool"
)
VALUES
(
	:Id,
	:Discriminator,
	:Value3,
	:NullableBool
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Discriminator",
	t1."Id",
	t1."Value3",
	t1."NullableBool",
	t1."Value2",
	t1."Value1"
FROM
	"TPHTable" t1
ORDER BY
	t1."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 3
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value1" = 'Str1'
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value2" = 'Str2'
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3'
FETCH NEXT 2 ROWS ONLY

