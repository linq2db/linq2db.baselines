﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "DynamicTable"
(
	"ID"             SERIAL  NOT NULL,
	"Not Identifier" Int     NOT NULL,
	"Some Value"     Int     NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(77,0)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	d."Not Identifier"
FROM
	"DynamicTable" d

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "DynamicTable"

