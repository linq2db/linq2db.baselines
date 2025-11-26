-- PostgreSQL.18 PostgreSQL
DECLARE @p Boolean
SET     @p = True

SELECT
	thing_1."Id"
FROM
	"Thing" thing_1
		LEFT JOIN "ThingState" s ON s."ThingId" = thing_1."Id"
		LEFT JOIN LATERAL (
			SELECT
				t."ThingId" as cond,
				t."TransitionType"
			FROM
				"Transition" t
					INNER JOIN "ThingState" s_1 ON s_1."ThingId" = thing_1."Id"
			WHERE
				t."ThingId" = s_1."ThingId" AND t."CreatedDate" = s_1."LastTransitionDate"
		) t1 ON 1=1
WHERE
	CASE
		WHEN s."ThingId" IS NOT NULL THEN t1.cond IS NULL OR t1."TransitionType" <> 'Delete' OR t1."TransitionType" IS NULL
		ELSE :p
	END

