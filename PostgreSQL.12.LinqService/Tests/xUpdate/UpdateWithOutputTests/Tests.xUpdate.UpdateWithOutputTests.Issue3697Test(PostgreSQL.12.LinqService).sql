﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3697"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3697"
(
	"Id" SERIAL  NOT NULL,

	CONSTRAINT "PK_Test3697" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3697Item"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3697Item"
(
	"Id"     SERIAL  NOT NULL,
	"Value"  Int     NOT NULL,
	"TestId" Int     NOT NULL,

	CONSTRAINT "PK_Test3697Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 3
DECLARE @TestId Integer -- Int32
SET     @TestId = 1

INSERT INTO "Test3697Item"
(
	"Value",
	"TestId"
)
VALUES
(
	:Value,
	:TestId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

UPDATE
	"Test3697Item"
SET
	"Value" = :Value
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

UPDATE
	"Test3697Item"
SET
	"Value" = :Value
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3697Item"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3697"

