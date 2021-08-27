﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "element_services"
			(
				"id"                 VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_process_service" CHAR                                   NOT NULL,
				"is_deleted"         CHAR                                   NOT NULL,

				CONSTRAINT "PK_element_services" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
SELECT 'TestProcessService',1,0 FROM rdb$database UNION ALL
SELECT 'TestElementService',0,0 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "component_categories"
			(
				"id"         VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted" CHAR                                   NOT NULL,

				CONSTRAINT "PK_component_categories" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
SELECT 'TestProcessCategory1','TestProcessService',0 FROM rdb$database UNION ALL
SELECT 'TestProcessCategory2','TestProcessService',0 FROM rdb$database UNION ALL
SELECT 'TestElementCategory1','TestElementService',0 FROM rdb$database UNION ALL
SELECT 'TestElementCategory2','TestElementService',0 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "components"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'components')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "components"
			(
				"id"          VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"category_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id"  VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted"  CHAR                                   NOT NULL,

				CONSTRAINT "PK_components" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
SELECT 'TestProcessComponent1','TestProcessCategory1','TestProcessService',0 FROM rdb$database UNION ALL
SELECT 'TestProcessComponent2','TestProcessCategory2','TestProcessService',0 FROM rdb$database UNION ALL
SELECT 'TestElementComponent1','TestElementCategory1','TestElementService',0 FROM rdb$database UNION ALL
SELECT 'TestElementComponent2','TestElementCategory2','TestElementService',0 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @is_deleted Char(1) -- String
SET     @is_deleted = '1'

UPDATE
	"component_categories"
SET
	"component_categories"."is_deleted" = @is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" "ctg"
				INNER JOIN "element_services" "ie" ON "ie"."id" = "ctg"."service_id"
				INNER JOIN "components" "cm" ON "ctg"."id" = "cm"."category_id" AND "cm"."is_deleted" = 0
		WHERE
			"ie"."id" = 'TestProcessService' AND "component_categories"."id" = "ctg"."id"
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "components"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

