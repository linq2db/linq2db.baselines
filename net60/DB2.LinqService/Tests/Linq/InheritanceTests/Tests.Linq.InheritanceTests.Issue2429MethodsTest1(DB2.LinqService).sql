BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "BaseTable"
		(
			"Value" Int NOT NULL,
			"Id"    Int NOT NULL,

			CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BaseValue Integer(4) -- Int32
SET     @BaseValue = 100
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
END

