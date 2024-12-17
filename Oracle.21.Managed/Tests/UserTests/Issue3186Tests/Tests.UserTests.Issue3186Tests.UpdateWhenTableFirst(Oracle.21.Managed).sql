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

INSERT ALL
	INTO "element_services" ("id", "is_process_service", "is_deleted") VALUES ('TestProcessService',1,0)
	INTO "element_services" ("id", "is_process_service", "is_deleted") VALUES ('TestElementService',0,0)
SELECT * FROM dual

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

INSERT ALL
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestProcessCategory1','TestProcessService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestProcessCategory2','TestProcessService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestElementCategory1','TestElementService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestElementCategory2','TestElementService',0)
SELECT * FROM dual

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

INSERT ALL
	INTO "Components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestProcessComponent1','TestProcessCategory1','TestProcessService',0)
	INTO "Components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestProcessComponent2','TestProcessCategory2','TestProcessService',0)
	INTO "Components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestElementComponent1','TestElementCategory1','TestElementService',0)
	INTO "Components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestElementComponent2','TestElementCategory2','TestElementService',0)
SELECT * FROM dual

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
			"component_categories" ct
				INNER JOIN "element_services" sr ON sr."id" = ct."service_id"
				INNER JOIN "Components" cm ON ct."id" = cm."category_id" AND cm."is_deleted" = 0
		WHERE
			sr."id" = 'TestProcessService' AND "component_categories"."id" = ct."id"
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

