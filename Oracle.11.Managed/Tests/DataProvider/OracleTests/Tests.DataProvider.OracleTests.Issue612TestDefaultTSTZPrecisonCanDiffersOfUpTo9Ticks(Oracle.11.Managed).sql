BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "DateTimeOffsetTable"
(
	"DateTimeOffsetValue" timestamp with time zone NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
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

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."DateTimeOffsetValue"
FROM
	"DateTimeOffsetTable" x
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

DROP TABLE "DateTimeOffsetTable"

