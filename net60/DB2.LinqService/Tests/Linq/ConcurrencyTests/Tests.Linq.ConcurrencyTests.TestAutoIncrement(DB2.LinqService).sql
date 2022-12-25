BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcurrencyTable"
		(
			"Id"    Int           NOT NULL,
			"Stamp" Int           NOT NULL,
			"Value" NVarChar(255)     NULL,

			CONSTRAINT "PK_ConcurrencyTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO "ConcurrencyTable"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = @Value_1
WHERE
	"ConcurrencyTable"."Id" = @Id AND "ConcurrencyTable"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ConcurrencyTable"';
END

