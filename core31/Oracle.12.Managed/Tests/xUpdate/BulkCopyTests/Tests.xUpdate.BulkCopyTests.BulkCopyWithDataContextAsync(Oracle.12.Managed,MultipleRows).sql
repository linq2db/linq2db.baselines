﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SimpleBulkCopyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

