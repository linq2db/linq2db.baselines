BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "i1084_person"
		(
			"Id"            Int NOT NULL,
			"Number"        Int NOT NULL,
			"StatusBitmask" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "i1084_person" ("Id", "Number", "StatusBitmask") VALUES (1,1,0)
	INTO "i1084_person" ("Id", "Number", "StatusBitmask") VALUES (2,2,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "i1084_student"
		(
			"Id"            Int          NOT NULL,
			"Number"        VarChar(255)     NULL,
			"StatusBitmask" Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "i1084_student" ("Id", "Number", "StatusBitmask") VALUES (1,'1',0)
	INTO "i1084_student" ("Id", "Number", "StatusBitmask") VALUES (2,'2',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	BITAND(k_1."StatusBitmask", 128),
	BITAND(g_1."StatusBitmask", 128)
FROM
	"i1084_person" k_1
		LEFT JOIN "i1084_student" g_1 ON k_1."Id" = g_1."Id" AND CAST(k_1."Number" AS VarChar(255)) = g_1."Number"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

