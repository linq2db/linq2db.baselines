BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestTimeTypes"
		(
			"Id"          Int           NOT NULL,
			"Date1"       Date          NOT NULL,
			"Date2"       Date          NOT NULL,
			"Time"        Time          NOT NULL,
			"TimeStamp0"  timestamp(0)  NOT NULL,
			"TimeStamp1"  timestamp(1)  NOT NULL,
			"TimeStamp2"  timestamp(2)  NOT NULL,
			"TimeStamp3"  timestamp(3)  NOT NULL,
			"TimeStamp4"  timestamp(4)  NOT NULL,
			"TimeStamp5"  timestamp(5)  NOT NULL,
			"TimeStamp6"  timestamp     NOT NULL,
			"TimeStamp7"  timestamp(7)  NOT NULL,
			"TimeStamp8"  timestamp(8)      NULL,
			"TimeStamp9"  timestamp(9)      NULL,
			"TimeStamp10" timestamp(10)     NULL,
			"TimeStamp11" timestamp(11)     NULL,
			"TimeStamp12" timestamp(12)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Timestamp(20) -- DateTime
SET     @p1 = 1000-01-10-02.20.30.00000001
DECLARE @p2 Timestamp(20) -- DateTime
SET     @p2 = 1000-01-10-02.20.30.000000001
DECLARE @p3 Timestamp(20) -- DateTime
SET     @p3 = 1000-01-10-02.20.30.0000000001
DECLARE @p4 Timestamp(20) -- DateTime
SET     @p4 = 1000-01-10-02.20.30.00000000001
DECLARE @p5 Timestamp(20) -- DateTime
SET     @p5 = 1000-01-10-02.20.30.000000000001
DECLARE @p6 Timestamp(20) -- DateTime
SET     @p6 = 1000-01-10-02.20.30.00000002
DECLARE @p7 Timestamp(20) -- DateTime
SET     @p7 = 1000-01-10-02.20.30.000000002
DECLARE @p8 Timestamp(20) -- DateTime
SET     @p8 = 1000-01-10-02.20.30.0000000002
DECLARE @p9 Timestamp(20) -- DateTime
SET     @p9 = 1000-01-10-02.20.30.00000000002
DECLARE @p10 Timestamp(20) -- DateTime
SET     @p10 = 1000-01-10-02.20.30.000000000002

INSERT INTO "TestTimeTypes"
(
	"Id",
	"Date1",
	"Date2",
	"Time",
	"TimeStamp0",
	"TimeStamp1",
	"TimeStamp2",
	"TimeStamp3",
	"TimeStamp4",
	"TimeStamp5",
	"TimeStamp6",
	"TimeStamp7",
	"TimeStamp8",
	"TimeStamp9",
	"TimeStamp10",
	"TimeStamp11",
	"TimeStamp12"
)
VALUES
(1,'1234-05-06-00.00.00','1234-05-07-00.00.00','21:02:03','1000-01-10-02.20.31','1000-01-10-02.20.30.1','1000-01-10-02.20.30.01','1000-01-10-02.20.30.001','1000-01-10-02.20.30.0011','1000-01-10-02.20.30.00101','1000-01-10-02.20.30.001001','1000-01-10-02.20.30.0010001',@p1,@p2,@p3,@p4,@p5),
(2,'6543-02-01-00.00.00','1234-05-08-00.00.00','23:02:01','1000-01-10-02.20.32','1000-01-10-02.20.30.2','1000-01-10-02.20.30.02','1000-01-10-02.20.30.002','1000-01-10-02.20.30.0012','1000-01-10-02.20.30.00102','1000-01-10-02.20.30.001002','1000-01-10-02.20.30.0010002',@p6,@p7,@p8,@p9,@p10)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."Id" = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date1_1 Date(20)
SET     @Date1_1 = '1234-05-06-00.00.00.000000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."Date1" = @Date1_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date2_1 Timestamp(20) -- DateTime
SET     @Date2_1 = '1234-05-07-00.00.00.000000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."Date2" = @Date2_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Time_2 Time(6)
SET     @Time_2 = '21:02:03'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."Time" = @Time_2
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp0_1 Timestamp(20) -- DateTime
SET     @TimeStamp0_1 = '1000-01-10-02.20.31.000000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp0" = @TimeStamp0_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp1_1 Timestamp(20) -- DateTime
SET     @TimeStamp1_1 = '1000-01-10-02.20.30.100000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp1" = @TimeStamp1_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp2_1 Timestamp(20) -- DateTime
SET     @TimeStamp2_1 = '1000-01-10-02.20.30.010000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp2" = @TimeStamp2_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp3_1 Timestamp(20) -- DateTime
SET     @TimeStamp3_1 = '1000-01-10-02.20.30.001000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp3" = @TimeStamp3_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp4_1 Timestamp(20) -- DateTime
SET     @TimeStamp4_1 = '1000-01-10-02.20.30.001100'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp4" = @TimeStamp4_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp5_1 Timestamp(20) -- DateTime
SET     @TimeStamp5_1 = '1000-01-10-02.20.30.001010'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp5" = @TimeStamp5_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp6_1 Timestamp(20) -- DateTime
SET     @TimeStamp6_1 = '1000-01-10-02.20.30.001001'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp6" = @TimeStamp6_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp7_1 Timestamp(20) -- DateTime
SET     @TimeStamp7_1 = '1000-01-10-02.20.30.001000'

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp7" = @TimeStamp7_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp8_1 Timestamp(20) -- DateTime
SET     @TimeStamp8_1 = 1000-01-10-02.20.30.00000001

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp8" = @TimeStamp8_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp9_1 Timestamp(20) -- DateTime
SET     @TimeStamp9_1 = 1000-01-10-02.20.30.000000001

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp9" = @TimeStamp9_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp10_1 Timestamp(20) -- DateTime
SET     @TimeStamp10_1 = 1000-01-10-02.20.30.0000000001

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp10" = @TimeStamp10_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp11_1 Timestamp(20) -- DateTime
SET     @TimeStamp11_1 = 1000-01-10-02.20.30.00000000001

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp11" = @TimeStamp11_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp12_1 Timestamp(20) -- DateTime
SET     @TimeStamp12_1 = 1000-01-10-02.20.30.000000000001

SELECT
	"_"."Id",
	"_"."Date1",
	"_"."Date2",
	"_"."Time",
	"_"."TimeStamp0",
	"_"."TimeStamp1",
	"_"."TimeStamp2",
	"_"."TimeStamp3",
	"_"."TimeStamp4",
	"_"."TimeStamp5",
	"_"."TimeStamp6",
	"_"."TimeStamp7",
	"_"."TimeStamp8",
	"_"."TimeStamp9",
	"_"."TimeStamp10",
	"_"."TimeStamp11",
	"_"."TimeStamp12"
FROM
	"TestTimeTypes" "_"
WHERE
	"_"."TimeStamp12" = @TimeStamp12_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestTimeTypes"';
END

