BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ProductTable"
		(
			"Id"   Int           NOT NULL,
			"Name" NVarChar(255) NOT NULL,

			CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductAttributeTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ProductAttributeTable"
		(
			"Id"   Int           NOT NULL,
			"Name" NVarChar(255) NOT NULL,

			CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductAttributeMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ProductAttributeMapping"
		(
			"ProductId"          Int NOT NULL,
			"ProductAttributeId" Int NOT NULL,

			CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"pa"."Id"
FROM
	"ProductAttributeMapping" "pam"
		INNER JOIN "ProductAttributeTable" "pa" ON "pam"."ProductAttributeId" = "pa"."Id"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT
					"groupedProduct"."Id"
				FROM
					"ProductTable" "groupedProduct"
						INNER JOIN "ProductAttributeMapping" "pam_1" ON "groupedProduct"."Id" = "pam_1"."ProductId"
				GROUP BY
					"groupedProduct"."Id"
				HAVING
					COUNT(*) = 1
			) "p"
		WHERE
			"p"."Id" >= "pam"."ProductId"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductAttributeMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductAttributeTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductTable"';
END

