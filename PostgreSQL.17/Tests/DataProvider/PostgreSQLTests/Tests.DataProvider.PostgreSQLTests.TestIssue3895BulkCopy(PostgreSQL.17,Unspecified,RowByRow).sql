BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIssue3895BulkCopy"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestIssue3895BulkCopy"
(
	"ID"                  SERIAL                    NOT NULL,
	"timestampDataType"   TimeStamp                     NULL,
	"timestampTZDataType" timestamp with time zone      NULL,

	CONSTRAINT "PK_TestIssue3895BulkCopy" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIssue3895BulkCopy"

