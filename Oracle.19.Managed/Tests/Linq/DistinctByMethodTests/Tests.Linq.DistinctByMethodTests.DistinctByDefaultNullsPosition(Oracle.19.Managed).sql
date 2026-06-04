-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Group" ORDER BY e."Priority", e."Id") as "RowNumber",
			e."Priority",
			e."Id",
			e."Group" as "Group_1"
		FROM
			"TestData" e
	) x
WHERE
	x."RowNumber" = 1
ORDER BY
	x."Group_1",
	x."Priority",
	x."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Group" ORDER BY e."Priority", e."Id") as "RowNumber",
			e."Priority",
			e."Id",
			e."Group" as "Group_1"
		FROM
			"TestData" e
	) x
WHERE
	x."RowNumber" = 1
ORDER BY
	x."Group_1",
	x."Priority",
	x."Id"

