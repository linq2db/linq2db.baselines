-- PostgreSQL.12 PostgreSQL12
CREATE TEMPORARY TABLE "TableWithPrimaryKey2"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.12 PostgreSQL12
INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(1)

-- PostgreSQL.12 PostgreSQL12
DROP TABLE IF EXISTS "TableWithPrimaryKey2"

