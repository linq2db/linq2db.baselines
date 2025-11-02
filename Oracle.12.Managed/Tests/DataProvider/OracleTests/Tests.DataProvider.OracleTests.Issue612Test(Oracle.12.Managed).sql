-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE "DateTimeOffsetTable"
(
	"DateTimeOffsetValue" timestamp with time zone NOT NULL
)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @DateTimeOffsetValue TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffsetValue = 03/30/2017 15:32:58.512655 +03:00

INSERT INTO "DateTimeOffsetTable"
(
	"DateTimeOffsetValue"
)
VALUES
(
	:DateTimeOffsetValue
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."DateTimeOffsetValue"
FROM
	"DateTimeOffsetTable" x
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

DROP TABLE "DateTimeOffsetTable"

