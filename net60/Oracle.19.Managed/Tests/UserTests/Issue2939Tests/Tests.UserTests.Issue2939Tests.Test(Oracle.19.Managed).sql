﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Adsl"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Adsl"
		(
			"Id"       Int NOT NULL,
			"IdClient" Int     NULL,

			CONSTRAINT "PK_Adsl" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Client"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Client"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Client" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	adsl_1."Id"
FROM
	"Adsl" adsl_1
		INNER JOIN "Client" client_1 ON adsl_1."IdClient" = client_1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Client"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Adsl"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

