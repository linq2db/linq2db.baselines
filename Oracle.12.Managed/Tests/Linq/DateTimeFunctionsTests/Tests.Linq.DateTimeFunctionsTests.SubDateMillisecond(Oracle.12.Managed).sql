-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) - t."DateTimeValue"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) - t."DateTimeValue"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) - t."DateTimeValue"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) - t."DateTimeValue")) * 10000000D)) AS Number(19)) AS Float) / 10000D
FROM
	"LinqDataTypes" t

