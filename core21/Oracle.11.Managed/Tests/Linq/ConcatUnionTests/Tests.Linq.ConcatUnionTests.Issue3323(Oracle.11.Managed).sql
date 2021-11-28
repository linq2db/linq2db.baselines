BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue3323Table"
(
	"Id"       Int          NOT NULL,
	"FistName" VarChar(255)     NULL,
	"LastName" VarChar(255)     NULL,

	CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName"
)
VALUES
(
	1,
	'one',
	'two'
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."FistName" || ' ' || t1."LastName"
FROM
	"Issue3323Table" t1
UNION ALL
SELECT
	t2."Id",
	t2."FistName" || ' ' || t2."LastName"
FROM
	"Issue3323Table" t2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3323Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

