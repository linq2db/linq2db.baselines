BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1373Tests"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1373Tests"
		(
			"Id"     Int          NOT NULL,
			"Field1" VarChar(255)     NULL,

			CONSTRAINT "PK_Issue1373Tests" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Field1 NVarchar2 -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	:Field1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Field1 NVarchar2(4) -- String
SET     @Field1 = 'test'

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	:Field1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Field1"
FROM
	"Issue1373Tests" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1373Tests"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

