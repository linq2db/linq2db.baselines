BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "DynamicTable"
(
	"ID"             SERIAL  NOT NULL,
	"Not Identifier" Int     NOT NULL,
	"Some Value"     Int     NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."Not Identifier", 
	Count(*), 
	Sum(t1."Some Value")
FROM
	"DynamicTable" t1
GROUP BY
	t1."Not Identifier"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "DynamicTable"

