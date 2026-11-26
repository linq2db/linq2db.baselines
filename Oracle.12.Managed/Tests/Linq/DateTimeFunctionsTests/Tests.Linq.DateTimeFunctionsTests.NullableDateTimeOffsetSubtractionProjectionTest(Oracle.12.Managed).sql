-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(Floor(Extract(Day From (Sys_Extract_Utc(t."FinishedOn") - Sys_Extract_Utc(t."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(t."FinishedOn") - Sys_Extract_Utc(t."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(t."FinishedOn") - Sys_Extract_Utc(t."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(t."FinishedOn") - Sys_Extract_Utc(t."StartedOn"))) * 10000000D)) AS Number(19))
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

