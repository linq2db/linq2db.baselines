-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

CREATE TABLE IF NOT EXISTS "DisposableTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DisposableTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "DisposableTable"

