BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMA"';
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
		CREATE TABLE "EntityMA"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityMA" PRIMARY KEY ("Id")
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
	INTO "EntityMA" ("Id", FK) VALUES (10,NULL)
	INTO "EntityMA" ("Id", FK) VALUES (11,NULL)
	INTO "EntityMA" ("Id", FK) VALUES (12,NULL)
	INTO "EntityMA" ("Id", FK) VALUES (13,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMB"';
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
		CREATE TABLE "EntityMB"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,
			FKD  Int     NULL,

			CONSTRAINT "PK_EntityMB" PRIMARY KEY ("Id")
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
	INTO "EntityMB" ("Id", FK, FKD) VALUES (20,10,40)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (21,11,NULL)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (22,11,40)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (23,19,49)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (24,19,NULL)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (25,NULL,49)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (26,NULL,40)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (27,19,41)
	INTO "EntityMB" ("Id", FK, FKD) VALUES (28,10,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMC"';
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
		CREATE TABLE "EntityMC"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityMC" PRIMARY KEY ("Id")
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
	INTO "EntityMC" ("Id", FK) VALUES (30,20)
	INTO "EntityMC" ("Id", FK) VALUES (31,24)
	INTO "EntityMC" ("Id", FK) VALUES (32,21)
	INTO "EntityMC" ("Id", FK) VALUES (33,21)
	INTO "EntityMC" ("Id", FK) VALUES (34,23)
	INTO "EntityMC" ("Id", FK) VALUES (35,NULL)
	INTO "EntityMC" ("Id", FK) VALUES (36,NULL)
	INTO "EntityMC" ("Id", FK) VALUES (37,29)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMD"';
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
		CREATE TABLE "EntityMD"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityMD" PRIMARY KEY ("Id")
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
	INTO "EntityMD" ("Id", FK) VALUES (40,NULL)
	INTO "EntityMD" ("Id", FK) VALUES (41,NULL)
	INTO "EntityMD" ("Id", FK) VALUES (42,NULL)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1.FK
FROM
	(
		SELECT DISTINCT
			d."Id",
			t2."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					t1."Id"
				FROM
					"EntityMA" t1
			) t2
				INNER JOIN "EntityMB" d ON t2."Id" = d.FK
	) m_1
		INNER JOIN "EntityMC" d_1 ON m_1."Id" = d_1.FK

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d.FK,
	d.FKD,
	d."Id"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d.FK

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1.FK,
	t1."Id"
FROM
	"EntityMA" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMD"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMC"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityMA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

