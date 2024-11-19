BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Position"
		(
			"Group" Int NOT NULL,
			"Order" Int NOT NULL,
			"Id"    Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @group Integer(4) -- Int32
SET     @group = 7

SELECT
	"p_1"."Id",
	FIRST_VALUE("p_1"."Id") OVER(ORDER BY "p_1"."Order_1" DESC)
FROM
	(
		SELECT
			"p"."Id",
			"p"."Order" as "Order_1"
		FROM
			"Position" "p"
		WHERE
			"p"."Group" = @group
	) "p_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
END

