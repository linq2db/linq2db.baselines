BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DynamicTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "DynamicTable"
		(
			ID               Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"Not Identifier" Int                              NOT NULL,
			"Some Value"     Int                              NOT NULL,

			CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NotIdentifier Integer(4) -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NotIdentifier Integer(4) -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."Not Identifier",
	COUNT(*),
	SUM("g_1"."Some Value")
FROM
	"DynamicTable" "g_1"
GROUP BY
	"g_1"."Not Identifier"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DynamicTable"';
END

