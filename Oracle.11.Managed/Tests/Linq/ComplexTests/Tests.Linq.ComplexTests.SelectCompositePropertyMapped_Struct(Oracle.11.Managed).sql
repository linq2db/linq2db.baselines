BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."City",
	t1."Street",
	t1."Building"
FROM
	(
		SELECT DISTINCT
			u."city" as "City",
			u."street" as "Street",
			u."building_number" as "Building"
		FROM
			"UserStruct" u
	) t1
WHERE
	ROWNUM <= 2

