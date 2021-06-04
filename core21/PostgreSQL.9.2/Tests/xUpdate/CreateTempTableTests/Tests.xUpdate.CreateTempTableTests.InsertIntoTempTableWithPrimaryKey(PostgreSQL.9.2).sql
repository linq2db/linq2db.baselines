BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TEMPORARY TABLE "TableWithPrimaryKey"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "TableWithPrimaryKey"
(
	"Key"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TableWithPrimaryKey"

