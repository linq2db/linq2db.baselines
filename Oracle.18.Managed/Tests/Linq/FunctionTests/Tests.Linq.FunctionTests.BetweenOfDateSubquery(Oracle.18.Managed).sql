-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.000000'

SELECT
	CASE
		WHEN t1."maxDay" BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."maxDay" >= :low AND t1."maxDay" <= :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."maxDay" NOT BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."maxDay" < :low OR t1."maxDay" > :high THEN 1
		ELSE 0
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

