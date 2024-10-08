BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Item"
(
	"GroupId"     Int  NOT NULL,
	"ItemId"      Int  NOT NULL,
	"Description" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ItemAppType"
(
	"AppTypeId" Int NOT NULL,
	"ItemId"    Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppType"
(
	"AppTypeId"   Int       NOT NULL,
	"CreatedDate" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppSubType"
(
	"AppTypeId"    Int       NOT NULL,
	"AppSubTypeId" Int       NOT NULL,
	"Description"  text          NULL,
	"CreatedDate"  TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @groupId Integer -- Int32
SET     @groupId = 5

SELECT
	i."ItemId",
	i."Description",
	(
		SELECT
			subtype_1."Description"
		FROM
			"ItemAppType" itemtype
				LEFT JOIN "AppType" type_1 ON type_1."AppTypeId" = itemtype."AppTypeId"
				LEFT JOIN "AppSubType" subtype_1 ON subtype_1."AppTypeId" = type_1."AppTypeId"
		WHERE
			itemtype."ItemId" = i."ItemId" AND type_1."AppTypeId" = itemtype."AppTypeId" AND
			(subtype_1."AppTypeId" = type_1."AppTypeId" OR subtype_1."AppTypeId" IS NULL AND type_1."AppTypeId" IS NULL)
		GROUP BY
			subtype_1."Description",
			subtype_1."AppSubTypeId"
		LIMIT 1
	)
FROM
	"Item" i
WHERE
	i."GroupId" = :groupId

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

