BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
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
		CREATE TABLE "Issue4620Table"
		(
			"Id"         Int             NOT NULL,
			"IdContract" Int                 NULL,
			"IdClient"   Int                 NULL,
			"Sum"        Decimal(28, 10) NOT NULL
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

INSERT ALL
	INTO "Issue4620Table" ("Id", "IdContract", "IdClient", "Sum") VALUES (1,NULL,1,0)
	INTO "Issue4620Table" ("Id", "IdContract", "IdClient", "Sum") VALUES (2,2,NULL,0)
	INTO "Issue4620Table" ("Id", "IdContract", "IdClient", "Sum") VALUES (3,NULL,NULL,0)
	INTO "Issue4620Table" ("Id", "IdContract", "IdClient", "Sum") VALUES (4,2,1,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
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
		CREATE TABLE "Issue4620Client"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL
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

INSERT ALL
	INTO "Issue4620Client" ("Id", "Name") VALUES (1,'Client 1')
	INTO "Issue4620Client" ("Id", "Name") VALUES (2,'Client 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
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
		CREATE TABLE "Issue4620Contract"
		(
			"Id"       Int NOT NULL,
			"IdClient" Int NOT NULL
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

INSERT ALL
	INTO "Issue4620Contract" ("Id", "IdClient") VALUES (1,1)
	INTO "Issue4620Contract" ("Id", "IdClient") VALUES (2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name"
FROM
	(
		SELECT
			b."Id",
			a_Client."Name"
		FROM
			"Issue4620Table" b
				INNER JOIN "Issue4620Client" a_Client ON b."IdClient" = a_Client."Id" AND b."IdClient" IS NOT NULL
		WHERE
			b."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			b_1."Id",
			a_Client_1."Name"
		FROM
			"Issue4620Table" b_1
				INNER JOIN "Issue4620Contract" a_Contract ON b_1."IdContract" = a_Contract."Id" AND b_1."IdContract" IS NOT NULL
				INNER JOIN "Issue4620Client" a_Client_1 ON a_Contract."IdClient" = a_Client_1."Id"
		WHERE
			b_1."IdContract" IS NOT NULL
	) t1
ORDER BY
	t1."Id",
	t1."Name"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

