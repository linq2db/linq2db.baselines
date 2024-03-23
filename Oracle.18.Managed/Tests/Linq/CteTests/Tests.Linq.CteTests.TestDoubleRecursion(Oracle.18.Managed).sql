﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
"hierarchyDown" ("Level", "Id")
AS
(
	SELECT
		0,
		t2."Id"
	FROM
		CTE_1 t2
	UNION ALL
	SELECT
		t3."Level" + 1,
		t_1."Id"
	FROM
		"hierarchyDown" t3
			INNER JOIN CTE_2 t_1 ON (t_1."ParentId" = t3."Id" OR t_1."ParentId" IS NULL AND t3."Id" IS NULL)
)
SELECT
	Count(*)
FROM
	"hierarchyDown" t4
		INNER JOIN "hierarchyDown" h2 ON (h2."Id" = t4."Id" OR h2."Id" IS NULL AND t4."Id" IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

