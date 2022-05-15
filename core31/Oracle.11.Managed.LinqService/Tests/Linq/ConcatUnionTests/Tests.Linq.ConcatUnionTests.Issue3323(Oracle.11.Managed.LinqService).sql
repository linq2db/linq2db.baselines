﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "Issue3323Table"
(
	"Id"       Int          NOT NULL,
	"FistName" VarChar(255)     NULL,
	"LastName" VarChar(255)     NULL,
	"Text"     VarChar(255) NOT NULL,

	CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Text",
	t1."FistName" || ' ' || t1."LastName"
FROM
	"Issue3323Table" t1
UNION ALL
SELECT
	t2."Id",
	t2."Text",
	t2."FistName" || ' ' || t2."LastName"
FROM
	"Issue3323Table" t2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3323Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

