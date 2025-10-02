BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."PK",
	p."Id",
	p."Date1",
	p."Date2",
	p."Date3",
	p."Date4"
FROM
	"WithMultipleDates" p
WHERE
	(
		SELECT
			MAX(t1.item)
		FROM
			(VALUES
				(p."Date1"), (p."Date2"), (p."Date3"), (p."Date4")
			) t1(item)
	) > make_timestamp(2023, 1, 1, 0, 0, 0)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."PK",
	p."Id",
	p."Date1",
	p."Date2",
	p."Date3",
	p."Date4"
FROM
	"WithMultipleDates" p
WHERE
	CASE
		WHEN (
			SELECT
				MAX(t1.item)
			FROM
				(VALUES
					(p."Date1"), (p."Date2"), (p."Date3"), (p."Date4")
				) t1(item)
		) > p."Date1"
			THEN False
		ELSE True
	END

