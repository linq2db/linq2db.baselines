-- Oracle.19.Managed Oracle.Managed Oracle12
UPDATE
	"SetFlagTable" t1
SET
	F = CASE
		WHEN t1.C IS NULL THEN CASE
			WHEN t1.F = 1 THEN 1
			WHEN t1.F = 0 THEN 0
			ELSE NULL
		END
		WHEN t1.A = t1.B OR t1.A IS NULL AND t1.B IS NULL THEN 1
		ELSE 0
	END

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r.F
FROM
	"SetFlagTable" r
ORDER BY
	r."Id"

