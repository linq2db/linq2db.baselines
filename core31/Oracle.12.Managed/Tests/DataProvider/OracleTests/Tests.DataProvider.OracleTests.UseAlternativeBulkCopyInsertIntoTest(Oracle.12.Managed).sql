﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "UseAlternativeBulkCopy"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Int32
SET     @:p2 = System.Object[]

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Int32
SET     @:p2 = System.Object[]

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Int32
SET     @:p2 = System.Object[]

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Int32
SET     @:p2 = System.Object[]

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"UseAlternativeBulkCopy" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UseAlternativeBulkCopy"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

