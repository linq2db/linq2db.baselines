BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithPrimaryKey"

