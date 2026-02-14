-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	(
		SELECT
			cc."Name" as "Value_1"
		FROM
			"Issue4160City" cc
		WHERE
			cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4160Person" pe

