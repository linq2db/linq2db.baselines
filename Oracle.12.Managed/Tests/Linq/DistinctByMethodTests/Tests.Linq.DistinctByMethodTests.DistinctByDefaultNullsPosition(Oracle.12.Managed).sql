-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Group" ORDER BY e."Priority", e."Id") as "RowNumber",
			e."Group" as "Group_1",
			e."Priority" as "RowNumber_1",
			e."Id"
		FROM
			"TestData" e
	) x
WHERE
	x."RowNumber" = 1
ORDER BY
	x."Group_1",
	x."RowNumber_1",
	x."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Group" ORDER BY e."Priority", e."Id") as "RowNumber",
			e."Group" as "Group_1",
			e."Priority" as "RowNumber_1",
			e."Id"
		FROM
			"TestData" e
	) x
WHERE
	x."RowNumber" = 1
ORDER BY
	x."Group_1",
	x."RowNumber_1",
	x."Id"

