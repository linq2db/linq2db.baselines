-- Firebird.3 Firebird3
DECLARE @p Boolean
SET     @p = TRUE

SELECT
	"thing_1"."Id"
FROM
	"Thing" "thing_1"
		LEFT JOIN "ThingState" "s" ON "s"."ThingId" = "thing_1"."Id"
WHERE
	CASE
		WHEN "s"."ThingId" IS NOT NULL THEN (
			SELECT
				"t"."ThingId"
			FROM
				"Transition" "t"
					INNER JOIN "ThingState" "s_1" ON "s_1"."ThingId" = "thing_1"."Id"
			WHERE
				"t"."ThingId" = "s_1"."ThingId" AND "t"."CreatedDate" = "s_1"."LastTransitionDate"
		) IS NULL OR CASE
			WHEN (
				SELECT
					"t_1"."TransitionType"
				FROM
					"Transition" "t_1"
						INNER JOIN "ThingState" "s_2" ON "s_2"."ThingId" = "thing_1"."Id"
				WHERE
					"t_1"."ThingId" = "s_2"."ThingId" AND "t_1"."CreatedDate" = "s_2"."LastTransitionDate"
			) = 'Delete'
				THEN FALSE
			ELSE TRUE
		END
		ELSE @p
	END

