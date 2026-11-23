-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(r.B + r.C AS Float), 2D),
	Power(CAST(r.C AS Float), CAST(r.B + r.C AS Float)),
	Power(CAST(r.B AS Float), 2D) + r.C,
	Power(CAST(r.B - r.C AS Float), 2D),
	Power(CAST(r.C AS Float), CAST(r.B - r.C AS Float)),
	Power(CAST(r.B AS Float), 2D) - r.C,
	Power(CAST(r.B * r.C AS Float), 2D),
	Power(CAST(r.C AS Float), CAST(r.B * r.C AS Float)),
	Power(CAST(r.B AS Float), 2D) * r.C,
	Power(CAST(Trunc(r.B / r.C) AS Float), 2D),
	Power(CAST(r.C AS Float), CAST(Trunc(r.B / r.C) AS Float)),
	Power(CAST(r.B AS Float), 2D) / r.C,
	Power(CAST(-r.B AS Float), 2D),
	-Power(CAST(r.B AS Float), 2D),
	Power(CAST(r.C AS Float), Power(CAST(r.C AS Float), CAST(r.C AS Float))),
	Power(Power(CAST(r.C AS Float), CAST(-r.B AS Float)), CAST(r.C AS Float)),
	Power(CAST(r.B + r.C AS Float), 2D)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

