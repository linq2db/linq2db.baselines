-- PostgreSQL.19 PostgreSQL12
SELECT
	Power((r."B" + r."C")::Float, 2),
	Power(r."C"::Float, (r."B" + r."C")::Float),
	Power(r."B"::Float, 2) + r."C",
	Power((r."B" - r."C")::Float, 2),
	Power(r."C"::Float, (r."B" - r."C")::Float),
	Power(r."B"::Float, 2) - r."C",
	Power((r."B" * r."C")::Float, 2),
	Power(r."C"::Float, (r."B" * r."C")::Float),
	Power(r."B"::Float, 2) * r."C",
	Power((r."B" / r."C")::Float, 2),
	Power(r."C"::Float, (r."B" / r."C")::Float),
	Power(r."B"::Float, 2) / r."C",
	Power((-r."B")::Float, 2),
	-Power(r."B"::Float, 2),
	Power(r."C"::Float, Power(r."C"::Float, r."C"::Float)),
	Power((r."B" + r."C")::Float, 2)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

