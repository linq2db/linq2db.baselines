-- PostgreSQL.9.5 PostgreSQL
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp

SELECT
	CASE
		WHEN t1."InRange" BETWEEN :low AND :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."InRange" >= :low AND t1."InRange" <= :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."InRange" NOT BETWEEN :low AND :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."InRange" < :low OR t1."InRange" > :high THEN True
		ELSE False
	END
FROM
	"BetweenDayRow" r
		LEFT JOIN LATERAL (
			SELECT
				MAX(x."Day") as "InRange"
			FROM
				"BetweenDayRow" x
			WHERE
				x."Id" = r."Id"
		) t1 ON 1=1

