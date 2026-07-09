-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "TableWithPrimaryKey"

