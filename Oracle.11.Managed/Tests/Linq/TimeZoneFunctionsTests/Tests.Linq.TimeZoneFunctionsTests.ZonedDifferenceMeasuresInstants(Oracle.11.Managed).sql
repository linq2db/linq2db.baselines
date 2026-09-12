-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc((
		SELECT
			b."Dto"
		FROM
			"ZonedRow" b
		WHERE
			b."Id" = 2
	)) - Sys_Extract_Utc(r."Dto")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc((
		SELECT
			b."Dto"
		FROM
			"ZonedRow" b
		WHERE
			b."Id" = 2
	)) - Sys_Extract_Utc(r."Dto")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc((
		SELECT
			b."Dto"
		FROM
			"ZonedRow" b
		WHERE
			b."Id" = 2
	)) - Sys_Extract_Utc(r."Dto")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc((
		SELECT
			b."Dto"
		FROM
			"ZonedRow" b
		WHERE
			b."Id" = 2
	)) - Sys_Extract_Utc(r."Dto"))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

