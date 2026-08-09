-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE "TableWithPrimaryKey2"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(1)

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TableWithPrimaryKey2"

