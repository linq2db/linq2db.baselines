-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	l."Id",
	ROW_NUMBER() OVER (PARTITION BY l."Group" ORDER BY CASE
		WHEN r."Payload" IS NOT NULL THEN 1
		ELSE 0
	END, l."Id")
FROM
	"Issue5123Left" l
		LEFT JOIN "Issue5123Right" r ON l."Id" = r."Id"
ORDER BY
	l."Id"

