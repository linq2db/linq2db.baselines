BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
SELECT CAST('TestProcessService' AS VarChar(100) CHARACTER SET UNICODE_FSS),TRUE,FALSE FROM rdb$database UNION ALL
SELECT 'TestElementService',FALSE,FALSE FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
SELECT CAST('TestProcessCategory1' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('TestProcessService' AS VarChar(100) CHARACTER SET UNICODE_FSS),FALSE FROM rdb$database UNION ALL
SELECT 'TestProcessCategory2','TestProcessService',FALSE FROM rdb$database UNION ALL
SELECT 'TestElementCategory1','TestElementService',FALSE FROM rdb$database UNION ALL
SELECT 'TestElementCategory2','TestElementService',FALSE FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
SELECT CAST('TestProcessComponent1' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('TestProcessCategory1' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('TestProcessService' AS VarChar(100) CHARACTER SET UNICODE_FSS),FALSE FROM rdb$database UNION ALL
SELECT 'TestProcessComponent2','TestProcessCategory2','TestProcessService',FALSE FROM rdb$database UNION ALL
SELECT 'TestElementComponent1','TestElementCategory1','TestElementService',FALSE FROM rdb$database UNION ALL
SELECT 'TestElementComponent2','TestElementCategory2','TestElementService',FALSE FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @is_deleted Boolean
SET     @is_deleted = TRUE

UPDATE
	"component_categories"
SET
	"is_deleted" = CAST(@is_deleted AS BOOLEAN)
WHERE
	 EXISTS (
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
-- Firebird.5 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = TRUE AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = FALSE AND "x"."service_id" <> 'TestProcessService'

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

