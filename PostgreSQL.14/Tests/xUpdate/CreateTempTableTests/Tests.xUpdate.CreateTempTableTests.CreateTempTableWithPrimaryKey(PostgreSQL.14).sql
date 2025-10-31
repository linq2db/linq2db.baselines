-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithPrimaryKey"

