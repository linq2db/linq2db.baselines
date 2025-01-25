BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Item"
(
	"GroupId"     Int  NOT NULL,
	"ItemId"      Int  NOT NULL,
	"Description" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ItemAppType"
(
	"AppTypeId" Int NOT NULL,
	"ItemId"    Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppType"
(
	"AppTypeId"   Int       NOT NULL,
	"CreatedDate" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppSubType"
(
	"AppTypeId"    Int       NOT NULL,
	"AppSubTypeId" Int       NOT NULL,
	"Description"  text          NULL,
	"CreatedDate"  TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @groupId Integer -- Int32
SET     @groupId = 5

SELECT
	i."ItemId",
	i."Description",
	t2."CountDistinctTypeId",
	t2."AppSubTypeId",
	t2."Description",
	t2."MaxSubtypeCreatedDate",
	t2."MaxTypeCreatedDate",
	t2."MaxTypeId",
	t2."CountDistinctSubTypeId"
FROM
	"Item" i
		LEFT JOIN LATERAL (
			SELECT
				subtype_1."AppSubTypeId",
				subtype_1."Description",
				MAX(subtype_1."CreatedDate") as "MaxSubtypeCreatedDate",
				MAX(type_1."CreatedDate") as "MaxTypeCreatedDate",
				MAX(type_1."AppTypeId") as "MaxTypeId",
				COUNT(DISTINCT type_1."AppTypeId") as "CountDistinctTypeId",
				COUNT(DISTINCT subtype_1."AppSubTypeId") as "CountDistinctSubTypeId"
			FROM
				"ItemAppType" t1
					LEFT JOIN "AppType" type_1 ON type_1."AppTypeId" = t1."AppTypeId"
					LEFT JOIN "AppSubType" subtype_1 ON subtype_1."AppTypeId" = type_1."AppTypeId"
			WHERE
				t1."ItemId" = i."ItemId" AND type_1."AppTypeId" = t1."AppTypeId" AND
				(subtype_1."AppTypeId" = type_1."AppTypeId" OR subtype_1."AppTypeId" IS NULL AND type_1."AppTypeId" IS NULL)
			GROUP BY
				subtype_1."Description",
				subtype_1."AppSubTypeId"
			ORDER BY
				COUNT(DISTINCT type_1."AppTypeId") DESC,
				MAX(subtype_1."CreatedDate") DESC,
				MAX(type_1."CreatedDate") DESC,
				MAX(type_1."AppTypeId") DESC
			LIMIT 1
		) t2 ON 1=1
WHERE
	i."GroupId" = :groupId

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"

