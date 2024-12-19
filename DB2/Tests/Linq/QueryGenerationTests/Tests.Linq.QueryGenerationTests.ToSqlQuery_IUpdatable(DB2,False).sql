BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TableWithIdentity"
		(
			"Id"    Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"Value" Int                              NOT NULL,

			CONSTRAINT "PK_TableWithIdentity" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @newValue Integer(4) -- Int32
SET     @newValue = 123

UPDATE
	"TableWithIdentity" "t1"
SET
	"Value" = @newValue

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TableWithIdentity"';
END

