BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereCases"';
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @BoolValue Int16
SET     @BoolValue = 1
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 12
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 13
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 14
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 15
DECLARE @BoolValue Int16
SET     @BoolValue = 0
DECLARE @NullableBoolValue Int16
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BoolValue",
	t1."NullableBoolValue"
FROM
	"WhereCases" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 1 AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 1 AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = 0 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT ((t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = 1 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = 1 AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = 1 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = 0 AND (t."NullableBoolValue" = 0 OR t."NullableBoolValue" IS NULL)) AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = 0 AND t."NullableBoolValue" = 0 AND t."NullableBoolValue" IS NOT NULL) AND t."Id" > 0)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereCases"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

