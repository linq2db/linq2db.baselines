﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (3)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (10)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (20)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (30)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SimpleBulkCopyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

