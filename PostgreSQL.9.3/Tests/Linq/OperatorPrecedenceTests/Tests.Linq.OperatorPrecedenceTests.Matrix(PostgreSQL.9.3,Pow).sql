-- PostgreSQL.9.3 PostgreSQL
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

-- cell Pow/Pow(Add(b,c),2): green
-- cell Pow/Pow(c,Add(b,c)): green
-- cell Pow/Add(Pow(b,2),c): green
-- cell Pow/Pow(Sub(b,c),2): green
-- cell Pow/Pow(c,Sub(b,c)): green
-- cell Pow/Sub(Pow(b,2),c): green
-- cell Pow/Pow(Mul(b,c),2): green
-- cell Pow/Pow(c,Mul(b,c)): green
-- cell Pow/Mul(Pow(b,2),c): green
-- cell Pow/Pow(Div(b,c),2): green
-- cell Pow/Pow(c,Div(b,c)): green
-- cell Pow/Div(Pow(b,2),c): green
-- cell Pow/Pow(Neg(b),2): green
-- cell Pow/Neg(Pow(b,2)): green
-- cell Pow/Pow(c,Pow(c,c)): green
-- cell Pow/Pow(AsNotNull(Add(b,c)),2): green
