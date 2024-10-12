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
INSERT BULK "TestIssue3895BulkCopy"(timestampDataType, timestampTZDataType)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIssue3895BulkCopy"

