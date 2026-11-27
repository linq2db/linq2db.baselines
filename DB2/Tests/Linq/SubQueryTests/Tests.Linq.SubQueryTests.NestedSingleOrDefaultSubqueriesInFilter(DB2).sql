-- DB2 DB2.LUW DB2LUW
DECLARE @p SmallInt(4) -- Int16
SET     @p = 1

SELECT
	"thing"."Id"
FROM
	"NestedFilterThing" "thing"
		LEFT JOIN "NestedFilterState" "s" ON "s"."ThingId" = "thing"."Id"
WHERE
	CASE
		WHEN "s"."ThingId" IS NOT NULL THEN (
			SELECT
				"t"."ThingId"
			FROM
				"NestedFilterTransition" "t"
					INNER JOIN "NestedFilterState" "s_1" ON "s_1"."ThingId" = "thing"."Id"
			WHERE
				"t"."ThingId" = "s_1"."ThingId" AND "t"."CreatedDate" = "s_1"."LastTransitionDate"
		) IS NULL OR CASE
			WHEN (
				SELECT
					"t_1"."TransitionType"
				FROM
					"NestedFilterTransition" "t_1"
						INNER JOIN "NestedFilterState" "s_2" ON "s_2"."ThingId" = "thing"."Id"
				WHERE
					"t_1"."ThingId" = "s_2"."ThingId" AND "t_1"."CreatedDate" = "s_2"."LastTransitionDate"
			) = 'Delete'
				THEN 0
			ELSE 1
		END
		ELSE @p
	END

