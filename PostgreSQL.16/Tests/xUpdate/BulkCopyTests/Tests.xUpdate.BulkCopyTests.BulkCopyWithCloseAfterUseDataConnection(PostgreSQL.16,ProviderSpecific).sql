﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
INSERT BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

