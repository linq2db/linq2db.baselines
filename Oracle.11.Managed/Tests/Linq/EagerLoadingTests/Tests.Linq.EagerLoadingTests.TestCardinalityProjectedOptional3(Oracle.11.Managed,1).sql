BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityA"';
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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityB"';
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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityC"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "EntityC" ("Id", FK) VALUES (30,NULL)
	INTO "EntityC" ("Id", FK) VALUES (31,NULL)
	INTO "EntityC" ("Id", FK) VALUES (32,NULL)
	INTO "EntityC" ("Id", FK) VALUES (33,NULL)
	INTO "EntityC" ("Id", FK) VALUES (34,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityD"';
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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

SELECT
	e."Id",
	a_ObjectBOptional."Id",
	a_ObjectBOptional."Id",
	a_ObjectCRequired."Id",
	a_ObjectCRequired.FK
FROM
	"EntityA" e
		LEFT JOIN "EntityB" a_ObjectBOptional ON e.FK = a_ObjectBOptional."Id" AND e.FK IS NOT NULL
		LEFT JOIN "EntityC" a_ObjectCRequired ON a_ObjectBOptional.FK = a_ObjectCRequired."Id" AND a_ObjectBOptional.FK IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityD"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityC"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EntityA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

