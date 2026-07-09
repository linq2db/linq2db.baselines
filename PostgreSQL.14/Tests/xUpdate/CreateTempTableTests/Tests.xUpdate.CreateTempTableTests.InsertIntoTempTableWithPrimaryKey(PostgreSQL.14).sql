-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TEMPORARY TABLE "TableWithPrimaryKey2"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(1)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TableWithPrimaryKey2"

