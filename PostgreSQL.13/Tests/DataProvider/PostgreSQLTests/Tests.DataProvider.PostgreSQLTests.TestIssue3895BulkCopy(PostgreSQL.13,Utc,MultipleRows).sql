BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestIssue3895BulkCopy"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestIssue3895BulkCopy"
(
	"ID"                  SERIAL                    NOT NULL,
	"timestampDataType"   TimeStamp                     NULL,
	"timestampTZDataType" timestamp with time zone      NULL,

	CONSTRAINT "PK_TestIssue3895BulkCopy" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TestIssue3895BulkCopy"
(
	"timestampDataType",
	"timestampTZDataType"
)
VALUES
('2020-02-29 17:54:55.123'::timestamp,'2020-02-29 17:54:55.123'::timestamp with time zone)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestIssue3895BulkCopy"

