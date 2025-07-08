BeforeExecute
-- PostgreSQL.18 PostgreSQL
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
		ORDER BY
			COUNT(DISTINCT type_1."AppTypeId") DESC,
			MAX(subtype_1."CreatedDate") DESC,
			MAX(type_1."CreatedDate") DESC,
			MAX(type_1."AppTypeId") DESC
		LIMIT 1
	)
FROM
	"Item" i
WHERE
	i."GroupId" = :groupId

