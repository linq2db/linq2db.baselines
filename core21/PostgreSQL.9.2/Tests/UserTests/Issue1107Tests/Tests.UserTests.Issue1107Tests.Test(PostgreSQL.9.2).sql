﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1107TB"
(
	"Id"       Int       NOT NULL,
	"TestDate" TimeStamp NOT NULL,

	CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
VALUES
(0,'2018-01-01'::date)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Issue1107TB"

