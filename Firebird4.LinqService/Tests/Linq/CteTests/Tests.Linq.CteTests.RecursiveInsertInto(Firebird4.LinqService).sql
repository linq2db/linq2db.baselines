﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "HierarchyTree"
			(
				"Id"       Int NOT NULL,
				"ParentId" Int
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 22
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 110
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 111
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 112
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 200
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 201
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 202
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 210
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 211
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 212
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int)
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyData"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "HierarchyData"
			(
				"Id"    Int NOT NULL,
				"Level" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "HierarchyData"
(
	"Id",
	"Level"
)
WITH RECURSIVE CTE_1 ("Id")
AS
(
	SELECT
		"t"."Id"
	FROM
		"HierarchyTree" "t"
	WHERE
		"t"."ParentId" IS NULL
),
CTE_2 ("ParentId", "Id")
AS
(
	SELECT
		"t1"."ParentId",
		"t1"."Id"
	FROM
		"HierarchyTree" "t1"
),
"hierarchyDown" ("Level", "Id")
AS
(
	SELECT
		0,
		"t2"."Id"
	FROM
		CTE_1 "t2"
	UNION ALL
	SELECT
		"t3"."Level" + 1,
		"t_1"."Id"
	FROM
		"hierarchyDown" "t3"
			INNER JOIN CTE_2 "t_1" ON ("t_1"."ParentId" = "t3"."Id" OR "t_1"."ParentId" IS NULL AND "t3"."Id" IS NULL)
)
SELECT
	"t4"."Id",
	"t4"."Level"
FROM
	"hierarchyDown" "t4"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Level"
FROM
	"HierarchyData" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyData"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END

