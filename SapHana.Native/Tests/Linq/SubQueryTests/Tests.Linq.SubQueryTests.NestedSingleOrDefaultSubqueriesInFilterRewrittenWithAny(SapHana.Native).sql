-- SapHana.Native SapHana
SELECT
	"thing"."Id"
FROM
	"NestedFilterThing" "thing"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"NestedFilterState" "transition"
				INNER JOIN "NestedFilterTransition" "t" ON "t"."ThingId" = "transition"."ThingId" AND "t"."CreatedDate" = "transition"."LastTransitionDate"
		WHERE
			"transition"."ThingId" = "thing"."Id" AND "t"."TransitionType" = 'Delete'
	)

