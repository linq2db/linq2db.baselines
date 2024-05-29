BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TableToInsert"
		(
			"Id"    Int           NOT NULL,
			"Value" NVarChar(255)     NULL,

			CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			"r"."Id"
		FROM
			"TableToInsert" "t"
				INNER JOIN (VALUES
					(3), (4)
				) "r"("Id") ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TableToInsert"';
END

