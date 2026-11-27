-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"PaymentMethodNullability" r
WHERE
	r."Method" IS NOT NULL

