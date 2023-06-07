﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyFiltered"';
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
		CREATE TABLE "ConcurrencyFiltered"
		(
			"Id"    Int          NOT NULL,
			"Stamp" Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_ConcurrencyFiltered" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyFiltered"
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
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered"
SET
	"ConcurrencyFiltered"."Stamp" = "ConcurrencyFiltered"."Stamp" + 1,
	"ConcurrencyFiltered"."Value" = :Value
WHERE
	"ConcurrencyFiltered"."Id" = 2 AND "ConcurrencyFiltered"."Id" = :Id AND
	"ConcurrencyFiltered"."Stamp" = :Stamp

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered"
SET
	"ConcurrencyFiltered"."Stamp" = "ConcurrencyFiltered"."Stamp" + 1,
	"ConcurrencyFiltered"."Value" = :Value
WHERE
	"ConcurrencyFiltered"."Id" = 1 AND "ConcurrencyFiltered"."Id" = :Id AND
	"ConcurrencyFiltered"."Stamp" = :Stamp

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" r
WHERE
	r."Id" = 2 AND r."Id" = :Id AND r."Stamp" = :Stamp

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" r
WHERE
	r."Id" = 1 AND r."Id" = :Id AND r."Stamp" = :Stamp

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyFiltered"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

