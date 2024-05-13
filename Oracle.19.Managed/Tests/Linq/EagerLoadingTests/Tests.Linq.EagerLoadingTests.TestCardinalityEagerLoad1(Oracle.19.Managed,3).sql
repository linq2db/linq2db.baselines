BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityA"';
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
		CREATE TABLE "EntityA"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityA" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "EntityA" ("Id", FK) VALUES (10,20)
	INTO "EntityA" ("Id", FK) VALUES (11,21)
	INTO "EntityA" ("Id", FK) VALUES (12,22)
	INTO "EntityA" ("Id", FK) VALUES (13,20)
	INTO "EntityA" ("Id", FK) VALUES (14,NULL)
	INTO "EntityA" ("Id", FK) VALUES (15,NULL)
	INTO "EntityA" ("Id", FK) VALUES (16,25)
	INTO "EntityA" ("Id", FK) VALUES (17,26)
	INTO "EntityA" ("Id", FK) VALUES (18,29)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityB"';
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
		CREATE TABLE "EntityB"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityB" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "EntityB" ("Id", FK) VALUES (20,30)
	INTO "EntityB" ("Id", FK) VALUES (21,31)
	INTO "EntityB" ("Id", FK) VALUES (22,30)
	INTO "EntityB" ("Id", FK) VALUES (23,31)
	INTO "EntityB" ("Id", FK) VALUES (24,31)
	INTO "EntityB" ("Id", FK) VALUES (25,NULL)
	INTO "EntityB" ("Id", FK) VALUES (26,NULL)
	INTO "EntityB" ("Id", FK) VALUES (27,NULL)
	INTO "EntityB" ("Id", FK) VALUES (28,39)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityC"';
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
		CREATE TABLE "EntityC"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityC" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "EntityC" ("Id", FK) VALUES (30,NULL)
	INTO "EntityC" ("Id", FK) VALUES (31,NULL)
	INTO "EntityC" ("Id", FK) VALUES (32,NULL)
	INTO "EntityC" ("Id", FK) VALUES (33,NULL)
	INTO "EntityC" ("Id", FK) VALUES (34,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityD"';
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
		CREATE TABLE "EntityD"
		(
			"Id" Int NOT NULL,
			FK   Int     NULL,

			CONSTRAINT "PK_EntityD" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "EntityD" ("Id", FK) VALUES (40,20)
	INTO "EntityD" ("Id", FK) VALUES (41,21)
	INTO "EntityD" ("Id", FK) VALUES (42,21)
	INTO "EntityD" ("Id", FK) VALUES (43,21)
	INTO "EntityD" ("Id", FK) VALUES (44,25)
	INTO "EntityD" ("Id", FK) VALUES (45,26)
	INTO "EntityD" ("Id", FK) VALUES (46,26)
	INTO "EntityD" ("Id", FK) VALUES (47,NULL)
	INTO "EntityD" ("Id", FK) VALUES (48,NULL)
	INTO "EntityD" ("Id", FK) VALUES (401,29)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d.FK
FROM
	(
		SELECT DISTINCT
			a_ObjectB."Id"
		FROM
			"EntityA" t1
				INNER JOIN "EntityB" a_ObjectB ON t1.FK = a_ObjectB."Id"
	) m_1
		INNER JOIN "EntityD" d ON m_1."Id" = d.FK

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1.FK,
	a_ObjectB."Id",
	a_ObjectB.FK,
	a_ObjectC."Id",
	a_ObjectC.FK
FROM
	"EntityA" t1
		INNER JOIN "EntityB" a_ObjectB ON t1.FK = a_ObjectB."Id"
		LEFT JOIN "EntityC" a_ObjectC ON a_ObjectB.FK = a_ObjectC."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityD"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityC"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

