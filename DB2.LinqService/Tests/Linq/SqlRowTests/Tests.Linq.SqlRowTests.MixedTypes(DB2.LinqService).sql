BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Mixed"
		(
			"Int"    Int           NOT NULL,
			"Str"    NVarChar(255)     NULL,
			"Date"   timestamp     NOT NULL,
			"Double" Float         NOT NULL,
			"Bool"   smallint      NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int Integer(4) -- Int32
SET     @Int = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2001-01-01-00.00.00.000000'
DECLARE @Double Double(8)
SET     @Double = 1
DECLARE @Bool SmallInt(4) -- Int16
SET     @Bool = 1

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int Integer(4) -- Int32
SET     @Int = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2002-02-02-00.00.00.000000'
DECLARE @Double Double(8)
SET     @Double = 2
DECLARE @Bool SmallInt(4) -- Int16
SET     @Bool = 0

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND ("t"."Str", "t"."Double", "t"."Bool") = ('One', 1, 1) AND
	 EXISTS (
		SELECT
			*
		FROM
			"Mixed" "u"
		WHERE
			(2, "u"."Date") > ("u"."Int", "t"."Date")
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Mixed"';
END

