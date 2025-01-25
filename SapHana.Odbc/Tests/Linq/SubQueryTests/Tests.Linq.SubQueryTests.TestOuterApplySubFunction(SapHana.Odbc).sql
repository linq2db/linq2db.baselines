BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Item"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Item"
(
	"GroupId"     Integer       NOT NULL,
	"ItemId"      Integer       NOT NULL,
	"Description" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ItemAppType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ItemAppType"
(
	"AppTypeId" Integer NOT NULL,
	"ItemId"    Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AppType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AppType"
(
	"AppTypeId"   Integer   NOT NULL,
	"CreatedDate" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AppSubType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AppSubType"
(
	"AppTypeId"    Integer       NOT NULL,
	"AppSubTypeId" Integer       NOT NULL,
	"Description"  NVarChar(255)     NULL,
	"CreatedDate"  Timestamp     NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @groupId  -- Int32
SET     @groupId = 5

SELECT
	"i"."ItemId",
	"i"."Description",
	"t2"."CountDistinctTypeId",
	"t2"."AppSubTypeId",
	"t2"."Description",
	"t2"."MaxSubtypeCreatedDate",
	"t2"."MaxTypeCreatedDate",
	"t2"."MaxTypeId",
	"t2"."CountDistinctSubTypeId"
FROM
	"Item" "i"
		LEFT JOIN LATERAL (
			SELECT
				"subtype_1"."AppSubTypeId",
				"subtype_1"."Description",
				MAX("subtype_1"."CreatedDate") as "MaxSubtypeCreatedDate",
				MAX("type_1"."CreatedDate") as "MaxTypeCreatedDate",
				MAX("type_1"."AppTypeId") as "MaxTypeId",
				COUNT(DISTINCT "type_1"."AppTypeId") as "CountDistinctTypeId",
				COUNT(DISTINCT "subtype_1"."AppSubTypeId") as "CountDistinctSubTypeId"
			FROM
				"ItemAppType" "t1"
					LEFT JOIN "AppType" "type_1" ON "type_1"."AppTypeId" = "t1"."AppTypeId"
					LEFT JOIN "AppSubType" "subtype_1" ON "subtype_1"."AppTypeId" = "type_1"."AppTypeId"
			WHERE
				"t1"."ItemId" = "i"."ItemId" AND "type_1"."AppTypeId" = "t1"."AppTypeId" AND
				("subtype_1"."AppTypeId" = "type_1"."AppTypeId" OR "subtype_1"."AppTypeId" IS NULL AND "type_1"."AppTypeId" IS NULL)
			GROUP BY
				"subtype_1"."Description",
				"subtype_1"."AppSubTypeId"
			ORDER BY
				COUNT(DISTINCT "type_1"."AppTypeId") DESC,
				MAX("subtype_1"."CreatedDate") DESC,
				MAX("type_1"."CreatedDate") DESC,
				MAX("type_1"."AppTypeId") DESC
			LIMIT 1
		) "t2" ON 1=1
WHERE
	"i"."GroupId" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AppSubType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AppType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ItemAppType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Item"

