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
	"t1"."Date1" = '1234-05-06-00.00.00'
FETCH NEXT 2 ROWS ONLY

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
	"t1"."Date2" = '1234-05-07-00.00.00'
FETCH NEXT 2 ROWS ONLY

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
	"t1"."Time" = '21:02:03'
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp0" = CAST('1000-01-10-02.20.31' AS TIMESTAMP(0))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp1" = CAST('1000-01-10-02.20.30.1' AS TIMESTAMP(1))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp2" = CAST('1000-01-10-02.20.30.01' AS TIMESTAMP(2))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp3" = CAST('1000-01-10-02.20.30.001' AS TIMESTAMP(3))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp4" = CAST('1000-01-10-02.20.30.0011' AS TIMESTAMP(4))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp5" = CAST('1000-01-10-02.20.30.00101' AS TIMESTAMP(5))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp6" = CAST('1000-01-10-02.20.30.001001' AS TIMESTAMP(6))
FETCH NEXT 2 ROWS ONLY

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
	"t1"."TimeStamp7" = CAST('1000-01-10-02.20.30.0010001' AS TIMESTAMP(7))
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = 1000-01-10-02.20.30.00000001

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
	"t1"."TimeStamp8" = @value
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = 1000-01-10-02.20.30.000000001

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
	"t1"."TimeStamp9" = @value
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = 1000-01-10-02.20.30.0000000001

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
	"t1"."TimeStamp10" = @value
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = 1000-01-10-02.20.30.00000000001

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
	"t1"."TimeStamp11" = @value
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = 1000-01-10-02.20.30.000000000001

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
	"t1"."TimeStamp12" = @value
FETCH NEXT 2 ROWS ONLY

