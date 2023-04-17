﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ParentId Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @ParentId Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @ParentId Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11
DECLARE @ParentId Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 20
DECLARE @ParentId Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 22
DECLARE @ParentId Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 100
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 110
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 111
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 112
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 200
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 201
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 202
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 210
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 211
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 212
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyData"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12

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
"hierarchyDown" ("Id", "Level")
AS
(
	SELECT
		t_1."Id",
		0
	FROM
		CTE_1 t_1
	UNION ALL
	SELECT
		t_2."Id",
		h."Level" + 1
	FROM
		"hierarchyDown" h
			INNER JOIN CTE_2 t_2 ON t_2."ParentId" = h."Id"
)
SELECT
	t2."Id",
	t2."Level"
FROM
	"hierarchyDown" t2

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Level"
FROM
	"HierarchyData" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "HierarchyTree"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

