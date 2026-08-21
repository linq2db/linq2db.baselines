-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(Floor(Extract(Day From (t."FinishedOn" - t."StartedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (t."FinishedOn" - t."StartedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (t."FinishedOn" - t."StartedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (t."FinishedOn" - t."StartedOn")) * 10000000D)) AS Number(19))
FROM
	"NullableDateTimeSub" t
ORDER BY
	t."Id"

