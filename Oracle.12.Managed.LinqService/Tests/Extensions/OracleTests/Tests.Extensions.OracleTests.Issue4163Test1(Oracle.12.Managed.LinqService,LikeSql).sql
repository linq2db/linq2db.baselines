BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Issue4163Table" r
WHERE
	r."Method" IS NOT NULL

