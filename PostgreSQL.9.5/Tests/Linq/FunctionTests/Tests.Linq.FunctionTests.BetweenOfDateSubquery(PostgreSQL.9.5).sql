-- PostgreSQL.9.5 PostgreSQL
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp

SELECT
	CASE
		WHEN t1."maxDay" BETWEEN :low AND :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."maxDay" >= :low AND t1."maxDay" <= :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."maxDay" NOT BETWEEN :low AND :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."maxDay" < :low OR t1."maxDay" > :high THEN True
		ELSE False
	END
FROM
	(
		SELECT
			(
				SELECT
					MAX(x."Day")
				FROM
					"BetweenDayRow" x
				WHERE
					x."Id" = r."Id"
			) as "maxDay"
		FROM
			"BetweenDayRow" r
	) t1

