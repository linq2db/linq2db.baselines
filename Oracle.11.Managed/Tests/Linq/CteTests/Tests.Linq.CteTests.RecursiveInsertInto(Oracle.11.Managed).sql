BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
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
		CREATE TABLE "HierarchyTree"
		(
			"Id"       Int NOT NULL,
			"ParentId" Int     NULL
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
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (1,NULL)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (2,NULL)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (10,1)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (11,1)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (20,2)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (22,2)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (100,10)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (101,10)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (102,10)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (110,11)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (111,11)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (112,11)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (200,20)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (201,20)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (202,20)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (210,21)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (211,21)
	INTO "HierarchyTree" ("Id", "ParentId") VALUES (212,21)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyData"';
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
		CREATE TABLE "HierarchyData"
		(
			"Id"    Int NOT NULL,
			"Level" Int NOT NULL
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

INSERT INTO "HierarchyData"
(
	"Id",
	"Level"
)
WITH CTE_1 ("Id")
AS
(
	SELECT
		t."Id"
	FROM
		"HierarchyTree" t
	WHERE
		t."ParentId" IS NULL
),
CTE_2 ("ParentId", "Id")
AS
(
	SELECT
		t1."ParentId",
		t1."Id"
	FROM
		"HierarchyTree" t1
),
"hierarchyDown" ("Level_1", "Id")
AS
(
	SELECT
		CAST(0 AS Int),
		t2."Id"
	FROM
		CTE_1 t2
	UNION ALL
	SELECT
		t3."Level_1" + 1,
		t_1."Id"
	FROM
		"hierarchyDown" t3
			INNER JOIN CTE_2 t_1 ON t_1."ParentId" = t3."Id"
)
SELECT
	t4."Id",
	t4."Level_1"
FROM
	"hierarchyDown" t4

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Level"
FROM
	"HierarchyData" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

