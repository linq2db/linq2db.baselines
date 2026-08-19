-- Oracle.11.Managed Oracle11
SELECT
	CAST(Floor(Extract(Day From (CAST(t."FinishedOn" AS timestamp) - CAST(t."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(t."FinishedOn" AS timestamp) - CAST(t."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(t."FinishedOn" AS timestamp) - CAST(t."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(t."FinishedOn" AS timestamp) - CAST(t."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

