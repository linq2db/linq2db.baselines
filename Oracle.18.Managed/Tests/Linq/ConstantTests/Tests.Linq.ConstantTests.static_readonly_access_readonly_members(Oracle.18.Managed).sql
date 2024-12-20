﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestConstantsData"';
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
		CREATE TABLE "TestConstantsData"
		(
			"Id"                Int          NOT NULL,
			"GuidValue"         Raw(16)      NOT NULL,
			"GuidNullableValue" Raw(16)          NULL,
			"StringValue"       VarChar(255)     NULL,

			CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "TestConstantsData" ("Id", "GuidValue", "GuidNullableValue", "StringValue") VALUES (1,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),'StrValue')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = 1 AND e."Id" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = 1 AND e."Id" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestConstantsData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

