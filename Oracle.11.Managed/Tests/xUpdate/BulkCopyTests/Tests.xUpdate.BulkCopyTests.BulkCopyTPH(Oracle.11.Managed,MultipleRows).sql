BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "Value3", "NullableBool") VALUES (1,1,'Str1',NULL,NULL,NULL)
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "Value3", "NullableBool") VALUES (2,2,NULL,'Str2',NULL,NULL)
	INTO "TPHTable" ("Id", "Discriminator", "Value1", "Value2", "Value3", "NullableBool") VALUES (3,3,NULL,NULL,'Str3','Y')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

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

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Discriminator" = 1 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Discriminator" = 2 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Discriminator" = 3 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Value1" = 'Str1' AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Value2" = 'Str2' AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

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
	x."Value3" = 'Str3' AND ROWNUM <= 2

