BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereCases"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WhereCases"
		(
			"Id"                Int     NOT NULL,
			"BoolValue"         Char(1) NOT NULL,
			"NullableBoolValue" Char(1)     NULL,

			CONSTRAINT "PK_WhereCases" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (1,1,NULL)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (2,1,1)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (3,1,NULL)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (4,1,1)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (5,1,1)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (11,0,NULL)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (12,0,0)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (13,0,NULL)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (14,0,0)
	INTO "WhereCases" ("Id", "BoolValue", "NullableBoolValue") VALUES (15,0,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BoolValue",
	t1."NullableBoolValue"
FROM
	"WhereCases" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 1 AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 1 AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND
	t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT ((t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = 1 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = 1 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND
	t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL)) AND
	t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL)) AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND
	t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND t."NullableBoolValue" IS NOT NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereCases"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

