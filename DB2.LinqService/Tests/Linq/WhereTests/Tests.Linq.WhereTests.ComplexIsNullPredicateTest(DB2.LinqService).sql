BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ComplexPredicate"
		(
			"Id"    Int           NOT NULL,
			"Value" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value VarChar -- String
SET     @Value = NULL

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'other'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Value VarChar(3) -- String
SET     @Value = '123'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Value VarChar(4) -- String
SET     @Value = 'test'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Value VarChar(1) -- String
SET     @Value = '1'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"ComplexPredicate" "r"
WHERE
	CASE
		WHEN "r"."Value" = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN "r"."Value" = '1' OR "r"."Value" = 'test' AND ("r"."Value" <> '1' OR "r"."Value" IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	"r"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ComplexPredicate" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
END

