﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

