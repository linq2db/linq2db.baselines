BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "element_services" ("id", "is_process_service", "is_deleted") VALUES ('TestProcessService',1,0)
	INTO "element_services" ("id", "is_process_service", "is_deleted") VALUES ('TestElementService',0,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestProcessCategory1','TestProcessService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestProcessCategory2','TestProcessService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestElementCategory1','TestElementService',0)
	INTO "component_categories" ("id", "service_id", "is_deleted") VALUES ('TestElementCategory2','TestElementService',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "components"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "components"
		(
			"id"          VarChar(100) NOT NULL,
			"category_id" VarChar(100) NOT NULL,
			"service_id"  VarChar(100) NOT NULL,
			"is_deleted"  Char(1)      NOT NULL,

			CONSTRAINT "PK_components" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestProcessComponent1','TestProcessCategory1','TestProcessService',0)
	INTO "components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestProcessComponent2','TestProcessCategory2','TestProcessService',0)
	INTO "components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestElementComponent1','TestElementCategory1','TestElementService',0)
	INTO "components" ("id", "category_id", "service_id", "is_deleted") VALUES ('TestElementComponent2','TestElementCategory2','TestElementService',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @is_deleted Int16
SET     @is_deleted = 1

UPDATE
	"component_categories"
SET
	"component_categories"."is_deleted" = :is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" ctg
				INNER JOIN "element_services" ie ON ie."id" = ctg."service_id"
				LEFT JOIN "components" cm ON ctg."id" = cm."category_id" AND cm."is_deleted" = 0
		WHERE
			ie."id" = 'TestProcessService' AND "component_categories"."id" = ctg."id"
	)

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "components"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

