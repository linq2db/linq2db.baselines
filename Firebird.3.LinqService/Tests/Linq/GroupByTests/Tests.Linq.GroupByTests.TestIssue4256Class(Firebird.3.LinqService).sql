BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."IsActive",
	"t1"."Other"
FROM
	(
		SELECT
			TRUE as "IsActive",
			CASE
				WHEN "it"."SmallIntValue" <> 0
					THEN TRUE
				ELSE FALSE
			END as "Other"
		FROM
			"LinqDataTypes" "it"
	) "t1"
GROUP BY
	"t1"."IsActive",
	"t1"."Other"

