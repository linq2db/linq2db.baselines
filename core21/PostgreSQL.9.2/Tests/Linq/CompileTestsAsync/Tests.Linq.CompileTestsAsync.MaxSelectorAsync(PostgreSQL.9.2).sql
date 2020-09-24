﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

SELECT
	Max(c_1."Id")
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" > :Id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "AsyncDataTable"

