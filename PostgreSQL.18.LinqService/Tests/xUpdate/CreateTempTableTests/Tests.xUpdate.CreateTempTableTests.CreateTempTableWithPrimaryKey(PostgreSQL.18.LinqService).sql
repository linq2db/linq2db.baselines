BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TableWithPrimaryKey"

