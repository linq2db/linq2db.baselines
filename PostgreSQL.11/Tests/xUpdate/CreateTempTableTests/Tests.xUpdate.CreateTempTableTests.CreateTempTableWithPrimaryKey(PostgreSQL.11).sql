-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TableWithPrimaryKey"

