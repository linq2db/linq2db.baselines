﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "TableWithPrimaryKey2"
(
	"Key" Int NOT NULL,

	CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TableWithPrimaryKey2"

