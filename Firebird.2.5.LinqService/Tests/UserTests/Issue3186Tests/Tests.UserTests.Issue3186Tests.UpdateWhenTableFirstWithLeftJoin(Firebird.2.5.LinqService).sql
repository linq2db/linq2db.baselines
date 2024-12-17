BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "element_services"
			(
				"id"                 VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_process_service" CHAR(1)                                NOT NULL,
				"is_deleted"         CHAR(1)                                NOT NULL,

				CONSTRAINT "PK_element_services" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Char -- String
SET     @is_process_service = '1'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Char -- String
SET     @is_process_service = '0'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "component_categories"
			(
				"id"         VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted" CHAR(1)                                NOT NULL,

				CONSTRAINT "PK_component_categories" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Components"
			(
				"id"          VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"category_id" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"service_id"  VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,
				"is_deleted"  CHAR(1)                                NOT NULL,

				CONSTRAINT "PK_Components" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char -- String
SET     @is_deleted = '0'

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @is_deleted Char -- String
SET     @is_deleted = '1'

UPDATE
	"component_categories"
SET
	"is_deleted" = CAST(@is_deleted AS CHAR(1))
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"component_categories" "ct"
				INNER JOIN "element_services" "sr" ON "sr"."id" = "ct"."service_id"
				LEFT JOIN "Components" "cm" ON "ct"."id" = "cm"."category_id" AND "cm"."is_deleted" = '0'
		WHERE
			"sr"."id" = 'TestProcessService' AND "component_categories"."id" = "ct"."id"
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = '1' AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = '0' AND "x"."service_id" <> 'TestProcessService'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Components')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Components"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'component_categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "component_categories"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'element_services')) THEN
		EXECUTE STATEMENT 'DROP TABLE "element_services"';
END

