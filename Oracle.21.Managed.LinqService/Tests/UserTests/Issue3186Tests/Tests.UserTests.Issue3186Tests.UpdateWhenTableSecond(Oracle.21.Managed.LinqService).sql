BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "element_services"
		(
			"id"                 VarChar(100) NOT NULL,
			"is_process_service" Char(1)      NOT NULL,
			"is_deleted"         Char(1)      NOT NULL,

			CONSTRAINT "PK_element_services" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Int16
SET     @is_process_service = 1
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	:id,
	:is_process_service,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Int16
SET     @is_process_service = 0
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
(
	:id,
	:is_process_service,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "component_categories"
		(
			"id"         VarChar(100) NOT NULL,
			"service_id" VarChar(100) NOT NULL,
			"is_deleted" Char(1)      NOT NULL,

			CONSTRAINT "PK_component_categories" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Int16
SET     @is_deleted = 0

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Components"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Components"
		(
			"id"          VarChar(100) NOT NULL,
			"category_id" VarChar(100) NOT NULL,
			"service_id"  VarChar(100) NOT NULL,
			"is_deleted"  Char(1)      NOT NULL,

			CONSTRAINT "PK_Components" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id Varchar2(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Int16
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
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id Varchar2(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Int16
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
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id Varchar2(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Int16
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
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Varchar2(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id Varchar2(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id Varchar2(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Int16
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
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @is_deleted Int16
SET     @is_deleted = 1

UPDATE
	"component_categories"
SET
	"is_deleted" = :is_deleted
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"element_services" ct
				INNER JOIN "component_categories" ctg ON ct."id" = ctg."service_id"
				INNER JOIN "Components" cm ON ctg."id" = cm."category_id" AND cm."is_deleted" = 0
		WHERE
			ct."id" = 'TestProcessService' AND "component_categories"."id" = ctg."id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."id",
	x."service_id",
	x."is_deleted"
FROM
	"component_categories" x
WHERE
	x."is_deleted" = 1 AND x."service_id" = 'TestProcessService'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."id",
	x."service_id",
	x."is_deleted"
FROM
	"component_categories" x
WHERE
	x."is_deleted" = 0 AND x."service_id" <> 'TestProcessService'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Components"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

