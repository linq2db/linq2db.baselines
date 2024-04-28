﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "element_services"
			(
				"id"                 VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_process_service" BOOLEAN                                NOT NULL,
				"is_deleted"         BOOLEAN                                NOT NULL,

				CONSTRAINT "PK_element_services" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Boolean
SET     @is_process_service = TRUE
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(18)),
	CAST(@is_process_service AS BOOLEAN),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Boolean
SET     @is_process_service = FALSE
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(18)),
	CAST(@is_process_service AS BOOLEAN),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "component_categories"
			(
				"id"         VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted" BOOLEAN                                NOT NULL,

				CONSTRAINT "PK_component_categories" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Components"
			(
				"id"          VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"category_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id"  VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted"  BOOLEAN                                NOT NULL,

				CONSTRAINT "PK_Components" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(21)),
	CAST(@category_id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(21)),
	CAST(@category_id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(21)),
	CAST(@category_id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = FALSE

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	CAST(@id AS VARCHAR(21)),
	CAST(@category_id AS VARCHAR(20)),
	CAST(@service_id AS VARCHAR(18)),
	CAST(@is_deleted AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @is_deleted Boolean
SET     @is_deleted = TRUE

UPDATE
	"component_categories"
SET
	"is_deleted" = CAST(@is_deleted AS BOOLEAN)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" "ct"
				INNER JOIN "element_services" "sr" ON "sr"."id" = "ct"."service_id"
				INNER JOIN "Components" "cm" ON "ct"."id" = "cm"."category_id" AND "cm"."is_deleted" = FALSE
		WHERE
			"sr"."id" = 'TestProcessService' AND "component_categories"."id" = "ct"."id"
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = TRUE AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = FALSE AND "x"."service_id" <> 'TestProcessService'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

