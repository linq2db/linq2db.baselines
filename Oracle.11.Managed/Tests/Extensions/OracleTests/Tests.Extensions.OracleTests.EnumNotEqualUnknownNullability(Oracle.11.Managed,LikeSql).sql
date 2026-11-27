-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"PaymentMethodNullability" r
WHERE
	r."Method" IS NOT NULL

