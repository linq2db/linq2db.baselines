BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyAutoIncrement"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcurrencyAutoIncrement"
		(
			"Id"    Int          NOT NULL,
			"Stamp" Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_ConcurrencyAutoIncrement" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyAutoIncrement"
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyAutoIncrement" obj
SET
	"Stamp" = obj."Stamp" + 1,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" obj
SET
	"Stamp" = obj."Stamp" + 1,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" obj
SET
	"Stamp" = obj."Stamp" + 1,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyAutoIncrement" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyAutoIncrement" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyAutoIncrement"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

