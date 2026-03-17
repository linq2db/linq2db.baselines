-- Firebird.4 Firebird4

SELECT
	("g_2"."Message" || ' items have not been processed, e.g. #' || Coalesce("g_2"."Message_1", '')) || '.'
FROM
	(
		SELECT
			COUNT(*) as "Message",
			MIN("g_1"."PersonID") as "Message_1"
		FROM
			"Person" "g_1"
		WHERE
			"g_1"."LastName" <> 'ERROR'
	) "g_2"
WHERE
	"g_2"."Message" > 0

