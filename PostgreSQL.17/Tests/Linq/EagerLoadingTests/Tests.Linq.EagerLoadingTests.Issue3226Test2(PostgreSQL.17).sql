﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Item"
(
	"Id"   Int  NOT NULL,
	"Text" text     NULL,

	CONSTRAINT "PK_Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ItemValue"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ItemValue"
(
	"Id"     Int     NOT NULL,
	"ItemId" Int     NOT NULL,
	"Value"  decimal NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ItemValue"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

