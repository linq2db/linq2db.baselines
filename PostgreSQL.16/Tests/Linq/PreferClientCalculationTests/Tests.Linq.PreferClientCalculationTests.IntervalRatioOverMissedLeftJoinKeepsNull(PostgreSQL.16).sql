-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	(Floor(Extract(day From (e."Date2" - e."Date")))::BigInt * 864000000000 + Floor(Extract(hour From (e."Date2" - e."Date")))::BigInt * 36000000000 + Floor(Extract(minute From (e."Date2" - e."Date")))::BigInt * 600000000 + Floor(Round(Extract(second From (e."Date2" - e."Date")) * 10000000))::BigInt)::Float / (Floor(Extract(day From (j."Date2" - j."Date")))::BigInt * 864000000000 + Floor(Extract(hour From (j."Date2" - j."Date")))::BigInt * 36000000000 + Floor(Extract(minute From (j."Date2" - j."Date")))::BigInt * 600000000 + Floor(Round(Extract(second From (j."Date2" - j."Date")) * 10000000))::BigInt)::Float
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

