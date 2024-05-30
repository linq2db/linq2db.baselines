BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1788"';
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
		CREATE TABLE "Table1788"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,

			CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 Int32
SET     @Value1 = 11

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	:Id,
	:Value1
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 Int32
SET     @Value1 = 22

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	:Id,
	:Value1
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 Int32
SET     @Value1 = 33

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	:Id,
	:Value1
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1"
FROM
	"Table1788" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	l."Id",
	l."Value1"
FROM
	"Table1788" p
		LEFT JOIN "Table1788" l ON l."Id" = p."Id" + 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1788"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

