﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "BaseTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "BaseTable"
(
	"Value" Int NOT NULL,
	"Id"    Int NOT NULL,

	CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @BaseValue Integer -- Int32
SET     @BaseValue = 100
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(
	:BaseValue,
	:Id
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."Value",
	x."Id"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."Value",
	x."Id"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "BaseTable"

