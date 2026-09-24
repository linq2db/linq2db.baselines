-- Oracle.11.Managed Oracle11
SELECT
	e."Id",
	Abs(j."Value1")
FROM
	"ClientCalcEntity" e
		LEFT JOIN "ClientCalcEntity" j ON j."Id" = e."Id" + 1000

