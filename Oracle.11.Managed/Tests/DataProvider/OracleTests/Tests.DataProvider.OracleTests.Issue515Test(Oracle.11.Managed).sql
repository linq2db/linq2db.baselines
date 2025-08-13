BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "DateTimeOffsetTable"
(
	"DateTimeOffsetValue" timestamp with time zone NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTimeOffsetValue TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffsetValue = 01/01/2000 10:11:12 +05:00

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
	t1."DateTimeOffsetValue"
FROM
	"DateTimeOffsetTable" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

DROP TABLE "DateTimeOffsetTable"

