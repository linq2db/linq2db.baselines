BeforeExecute
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
ORDER BY
	(
		SELECT
			SUM("a_Values"."Value")
		FROM
			"ItemValue" "a_Values"
		WHERE
			x."Id" = "a_Values"."ItemId"
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ItemValue"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

