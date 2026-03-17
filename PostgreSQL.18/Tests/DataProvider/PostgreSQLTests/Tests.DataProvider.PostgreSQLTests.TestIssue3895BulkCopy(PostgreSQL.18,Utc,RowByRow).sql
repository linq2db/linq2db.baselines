-- PostgreSQL.18 PostgreSQL
DECLARE @timestampDataType Timestamp -- DateTime2
SET     @timestampDataType = '2020-02-29 17:54:55.123'::timestamp
DECLARE @timestampTZDataType TimestampTz -- DateTime
SET     @timestampTZDataType = '2020-02-29 17:54:55.123'::timestamp

INSERT INTO "TestIssue3895BulkCopy"
(
	"timestampDataType",
	"timestampTZDataType"
)
VALUES
(
	:timestampDataType,
	:timestampTZDataType
)

