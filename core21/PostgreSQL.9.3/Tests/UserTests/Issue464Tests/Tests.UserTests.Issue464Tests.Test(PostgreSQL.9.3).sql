﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue464" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Issue464"

