BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DynamicTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DynamicTable"
(
	"ID"             SERIAL  NOT NULL,
	"Not Identifier" Int     NOT NULL,
	"Some Value"     Int     NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(77,0)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	d."Not Identifier"
FROM
	"DynamicTable" d

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DynamicTable"

