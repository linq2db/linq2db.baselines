BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

