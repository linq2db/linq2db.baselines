BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Item"
(
	"GroupId"     Int  NOT NULL,
	"ItemId"      Int  NOT NULL,
	"Description" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ItemAppType"
(
	"AppTypeId" Int NOT NULL,
	"ItemId"    Int NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppType"
(
	"AppTypeId"   Int       NOT NULL,
	"CreatedDate" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AppSubType"
(
	"AppTypeId"    Int       NOT NULL,
	"AppSubTypeId" Int       NOT NULL,
	"Description"  text          NULL,
	"CreatedDate"  TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
				t1."AppSubTypeId",
				t1."Description",
				t1."MAX_1" as "MaxSubtypeCreatedDate",
				t1."MAX_2" as "MaxTypeCreatedDate",
				t1."MAX_3" as "MaxTypeId",
				t1."CountExt" as "CountDistinctTypeId",
				t1."CountExt_1" as "CountDistinctSubTypeId"
			FROM
				(
					SELECT
						COUNT(DISTINCT type_1."AppTypeId") as "CountExt",
						MAX(subtype_1."CreatedDate") as "MAX_1",
						MAX(type_1."CreatedDate") as "MAX_2",
						MAX(type_1."AppTypeId") as "MAX_3",
						subtype_1."AppSubTypeId",
						subtype_1."Description",
						COUNT(DISTINCT subtype_1."AppSubTypeId") as "CountExt_1"
					FROM
						"ItemAppType" grpby
							LEFT JOIN "AppType" type_1 ON type_1."AppTypeId" = grpby."AppTypeId"
							LEFT JOIN "AppSubType" subtype_1 ON subtype_1."AppTypeId" = type_1."AppTypeId"
					WHERE
						grpby."ItemId" = i."ItemId" AND type_1."AppTypeId" = grpby."AppTypeId" AND
						(subtype_1."AppTypeId" = type_1."AppTypeId" OR subtype_1."AppTypeId" IS NULL AND type_1."AppTypeId" IS NULL)
					GROUP BY
						subtype_1."Description",
						subtype_1."AppSubTypeId"
				) t1
			ORDER BY
				t1."CountExt" DESC,
				t1."MAX_1" DESC,
				t1."MAX_2" DESC,
				t1."MAX_3" DESC
			LIMIT 1
		) t2 ON 1=1
WHERE
	i."GroupId" = :groupId

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppSubType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AppType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ItemAppType"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"

