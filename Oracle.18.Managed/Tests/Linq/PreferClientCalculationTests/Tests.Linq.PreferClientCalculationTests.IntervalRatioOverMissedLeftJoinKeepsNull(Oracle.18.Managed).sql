-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (e."Date2" - e."Date"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (e."Date2" - e."Date"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (e."Date2" - e."Date"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (e."Date2" - e."Date")) * 10000000D)) AS Number(19)) AS Float) / CAST(CAST(Floor(Extract(Day From (j."Date2" - j."Date"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (j."Date2" - j."Date"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (j."Date2" - j."Date"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (j."Date2" - j."Date")) * 10000000D)) AS Number(19)) AS Float)
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

