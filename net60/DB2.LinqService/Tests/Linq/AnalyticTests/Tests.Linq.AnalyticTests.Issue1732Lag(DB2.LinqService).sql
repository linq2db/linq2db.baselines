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
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 10
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 20
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 30
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Group_1 Integer(4) -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer(4) -- Int32
SET     @Order_1 = 40
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @group_1 Integer(4) -- Int32
SET     @group_1 = 7

SELECT
	"p"."Id",
	LAG("p"."Id", 1, -1) OVER(ORDER BY "p"."Order")
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Position"';
END

