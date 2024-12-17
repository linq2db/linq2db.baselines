BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "element_services"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "element_services"
(
	"id"                 NVarChar(100) NOT NULL,
	"is_process_service" TinyInt       NOT NULL,
	"is_deleted"         TinyInt       NOT NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service  -- Byte
SET     @is_process_service = 1
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service  -- Byte
SET     @is_process_service = 0
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "component_categories"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "component_categories"
(
	"id"         NVarChar(100) NOT NULL,
	"service_id" NVarChar(100) NOT NULL,
	"is_deleted" TinyInt       NOT NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Components"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Components"
(
	"id"          NVarChar(100) NOT NULL,
	"category_id" NVarChar(100) NOT NULL,
	"service_id"  NVarChar(100) NOT NULL,
	"is_deleted"  TinyInt       NOT NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 0

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @is_deleted  -- Byte
SET     @is_deleted = 1

UPDATE
	"component_categories"
SET
	"is_deleted" = ?
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" "ct"
				INNER JOIN "element_services" "sr" ON "sr"."id" = "ct"."service_id"
				INNER JOIN "Components" "cm" ON "ct"."id" = "cm"."category_id" AND "cm"."is_deleted" = 0
		WHERE
			"sr"."id" = 'TestProcessService' AND "component_categories"."id" = "ct"."id"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = 1 AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = 0 AND "x"."service_id" <> 'TestProcessService'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Components"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "component_categories"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "element_services"

