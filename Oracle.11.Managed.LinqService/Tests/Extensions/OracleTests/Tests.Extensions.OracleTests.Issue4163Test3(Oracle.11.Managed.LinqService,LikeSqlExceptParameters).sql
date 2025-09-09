BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Issue4163Table" r
WHERE
	r."Method" IS NOT NULL

