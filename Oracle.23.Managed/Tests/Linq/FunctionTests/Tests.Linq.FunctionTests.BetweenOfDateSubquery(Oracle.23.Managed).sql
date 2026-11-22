-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.000000'

SELECT
	CASE
		WHEN t1."InRange" BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."InRange" >= :low AND t1."InRange" <= :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."InRange" NOT BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN t1."InRange" < :low OR t1."InRange" > :high THEN 1
		ELSE 0
	END
FROM
	"BetweenDayRow" r
		OUTER APPLY (
			SELECT
				MAX(x."Day") as "InRange"
			FROM
				"BetweenDayRow" x
			WHERE
				x."Id" = r."Id"
		) t1

