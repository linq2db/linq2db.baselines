-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Date1 Date(20)
SET     @Date1 = '1234-05-06-00.00.00.000000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."Date1" = @Date1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Date2 Timestamp(20) -- DateTime
SET     @Date2 = '1234-05-07-00.00.00.000000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."Date2" = @Date2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Time Time(6)
SET     @Time = '21:02:03'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."Time" = @Time
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp0 Timestamp(20) -- DateTime
SET     @TimeStamp0 = '1000-01-10-02.20.31.000000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp0" = @TimeStamp0
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp1 Timestamp(20) -- DateTime
SET     @TimeStamp1 = '1000-01-10-02.20.30.100000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp1" = @TimeStamp1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp2 Timestamp(20) -- DateTime
SET     @TimeStamp2 = '1000-01-10-02.20.30.010000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp2" = @TimeStamp2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp3 Timestamp(20) -- DateTime
SET     @TimeStamp3 = '1000-01-10-02.20.30.001000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp3" = @TimeStamp3
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp4 Timestamp(20) -- DateTime
SET     @TimeStamp4 = '1000-01-10-02.20.30.001100'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp4" = @TimeStamp4
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp5 Timestamp(20) -- DateTime
SET     @TimeStamp5 = '1000-01-10-02.20.30.001010'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp5" = @TimeStamp5
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp6 Timestamp(20) -- DateTime
SET     @TimeStamp6 = '1000-01-10-02.20.30.001001'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp6" = @TimeStamp6
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp7 Timestamp(20) -- DateTime
SET     @TimeStamp7 = '1000-01-10-02.20.30.001000'

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp7" = @TimeStamp7
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp8 Timestamp(20) -- DateTime
SET     @TimeStamp8 = 1000-01-10-02.20.30.00000001

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp8" = @TimeStamp8
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp9 Timestamp(20) -- DateTime
SET     @TimeStamp9 = 1000-01-10-02.20.30.000000001

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp9" = @TimeStamp9
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp10 Timestamp(20) -- DateTime
SET     @TimeStamp10 = 1000-01-10-02.20.30.0000000001

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp10" = @TimeStamp10
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp11 Timestamp(20) -- DateTime
SET     @TimeStamp11 = 1000-01-10-02.20.30.00000000001

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp11" = @TimeStamp11
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @TimeStamp12 Timestamp(20) -- DateTime
SET     @TimeStamp12 = 1000-01-10-02.20.30.000000000001

SELECT
	"t1"."Id",
	"t1"."Date1",
	"t1"."Date2",
	"t1"."Time",
	"t1"."TimeStamp0",
	"t1"."TimeStamp1",
	"t1"."TimeStamp2",
	"t1"."TimeStamp3",
	"t1"."TimeStamp4",
	"t1"."TimeStamp5",
	"t1"."TimeStamp6",
	"t1"."TimeStamp7",
	"t1"."TimeStamp8",
	"t1"."TimeStamp9",
	"t1"."TimeStamp10",
	"t1"."TimeStamp11",
	"t1"."TimeStamp12"
FROM
	"TestTimeTypes" "t1"
WHERE
	"t1"."TimeStamp12" = @TimeStamp12
FETCH NEXT 2 ROWS ONLY

