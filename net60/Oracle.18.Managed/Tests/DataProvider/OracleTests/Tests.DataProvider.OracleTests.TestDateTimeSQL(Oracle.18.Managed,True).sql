﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "Test0431"
(
	"Date"             date                        NOT NULL,
	"DateTime"         timestamp                   NOT NULL,
	"DateTime_"        date                        NOT NULL,
	"DateTime2"        timestamp                   NOT NULL,
	"DateTime2_0"      timestamp(0)                NOT NULL,
	"DateTime2_1"      timestamp(1)                NOT NULL,
	"DateTime2_9"      timestamp(9)                NOT NULL,
	"DateTimeOffset_"  timestamp with time zone    NOT NULL,
	"DateTimeOffset_0" timestamp(0) with time zone NOT NULL,
	"DateTimeOffset_1" timestamp(1) with time zone NOT NULL,
	"DateTimeOffset_9" timestamp(9) with time zone NOT NULL
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Date_1 Date
SET     @Date_1 = TIMESTAMP '2020-01-03 00:00:00.000000'
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TIMESTAMP '2020-01-03 04:05:06.789123'
DECLARE @DateTime_ TimeStamp -- DateTime
SET     @DateTime_ = TIMESTAMP '2020-01-03 04:05:06.000000'
DECLARE @DateTime2 TimeStamp -- DateTime
SET     @DateTime2 = TIMESTAMP '2020-01-03 04:05:06.789123'
DECLARE @DateTime2_0 TimeStamp -- DateTime
SET     @DateTime2_0 = TIMESTAMP '2020-01-03 04:05:06.000000'
DECLARE @DateTime2_1 TimeStamp -- DateTime
SET     @DateTime2_1 = TIMESTAMP '2020-01-03 04:05:06.700000'
DECLARE @DateTime2_9 TimeStamp -- DateTime
SET     @DateTime2_9 = TIMESTAMP '2020-01-03 04:05:06.789123'
DECLARE @DateTimeOffset_ TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffset_ = 01/03/2020 04:05:06.789123 +00:45
DECLARE @DateTimeOffset_0 TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffset_0 = 01/03/2020 04:05:06 +00:45
DECLARE @DateTimeOffset_1 TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffset_1 = 01/03/2020 04:05:06.7 +00:45
DECLARE @DateTimeOffset_9 TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffset_9 = 01/03/2020 04:05:06.7891234 +00:45

INSERT INTO "Test0431"
(
	"Date",
	"DateTime",
	"DateTime_",
	"DateTime2",
	"DateTime2_0",
	"DateTime2_1",
	"DateTime2_9",
	"DateTimeOffset_",
	"DateTimeOffset_0",
	"DateTimeOffset_1",
	"DateTimeOffset_9"
)
VALUES
(
	:Date_1,
	:DateTime,
	:DateTime_,
	:DateTime2,
	:DateTime2_0,
	:DateTime2_1,
	:DateTime2_9,
	:DateTimeOffset_,
	:DateTimeOffset_0,
	:DateTimeOffset_1,
	:DateTimeOffset_9
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."Date" = DATE '2020-01-03'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime" = TIMESTAMP '2020-01-03 04:05:06.789123'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime_" = TO_DATE('2020-01-03 04:05:06', 'YYYY-MM-DD HH24:MI:SS')

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime2" = TIMESTAMP '2020-01-03 04:05:06.789123'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime2_0" = TIMESTAMP '2020-01-03 04:05:06'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime2_1" = TIMESTAMP '2020-01-03 04:05:06.7'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTime2_9" = TIMESTAMP '2020-01-03 04:05:06.7891234'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTimeOffset_" = TIMESTAMP '2020-01-03 03:20:06.789123 +00:00'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTimeOffset_0" = TIMESTAMP '2020-01-03 03:20:06 +00:00'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTimeOffset_1" = TIMESTAMP '2020-01-03 03:20:06.7 +00:00'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Date",
	r."DateTime",
	r."DateTime_",
	r."DateTime2",
	r."DateTime2_0",
	r."DateTime2_1",
	r."DateTime2_9",
	r."DateTimeOffset_",
	r."DateTimeOffset_0",
	r."DateTimeOffset_1",
	r."DateTimeOffset_9"
FROM
	"Test0431" r
WHERE
	r."DateTimeOffset_9" = TIMESTAMP '2020-01-03 03:20:06.7891234 +00:00'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test0431"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

