BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "element_services"
		(
			"id"                 NVarChar(100) NOT NULL,
			"is_process_service" smallint      NOT NULL,
			"is_deleted"         smallint      NOT NULL,

			CONSTRAINT "PK_element_services" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "element_services"
(
	"id",
	"is_process_service",
	"is_deleted"
)
VALUES
('TestProcessService',1,0),
('TestElementService',0,0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "component_categories"
		(
			"id"         NVarChar(100) NOT NULL,
			"service_id" NVarChar(100) NOT NULL,
			"is_deleted" smallint      NOT NULL,

			CONSTRAINT "PK_component_categories" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "component_categories"
(
	"id",
	"service_id",
	"is_deleted"
)
VALUES
('TestProcessCategory1','TestProcessService',0),
('TestProcessCategory2','TestProcessService',0),
('TestElementCategory1','TestElementService',0),
('TestElementCategory2','TestElementService',0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Components"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Components"
		(
			"id"          NVarChar(100) NOT NULL,
			"category_id" NVarChar(100) NOT NULL,
			"service_id"  NVarChar(100) NOT NULL,
			"is_deleted"  smallint      NOT NULL,

			CONSTRAINT "PK_Components" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Components"
(
	"id",
	"category_id",
	"service_id",
	"is_deleted"
)
VALUES
('TestProcessComponent1','TestProcessCategory1','TestProcessService',0),
('TestProcessComponent2','TestProcessCategory2','TestProcessService',0),
('TestElementComponent1','TestElementCategory1','TestElementService',0),
('TestElementComponent2','TestElementCategory2','TestElementService',0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @is_deleted SmallInt(4) -- Int16
SET     @is_deleted = 1

UPDATE
	"component_categories"
SET
	"is_deleted" = CAST(@is_deleted AS smallint)
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"component_categories" "ct"
				INNER JOIN "element_services" "sr" ON "sr"."id" = "ct"."service_id"
				LEFT JOIN "Components" "cm" ON "ct"."id" = "cm"."category_id" AND "cm"."is_deleted" = 0
		WHERE
			"sr"."id" = 'TestProcessService' AND "component_categories"."id" = "ct"."id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = 1 AND "x"."service_id" = 'TestProcessService'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."id",
	"x"."service_id",
	"x"."is_deleted"
FROM
	"component_categories" "x"
WHERE
	"x"."is_deleted" = 0 AND "x"."service_id" <> 'TestProcessService'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Components"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "component_categories"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "element_services"';
END

