﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "Issue1107TB"
(
	"Id"       Int       NOT NULL,
	"TestDate" timestamp NOT NULL,

	CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue1107TB" ("Id", "TestDate") VALUES (0,TIMESTAMP '2018-01-01 00:00:00.000000')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1107TB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

