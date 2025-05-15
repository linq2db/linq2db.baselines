BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	CASE
		WHEN x."StringValue" LIKE '%Str%' ESCAPE '~' THEN 1
		WHEN x."StringValue" NOT LIKE '%Str%' ESCAPE '~' THEN 0
		ELSE NULL
	END = 1 AND
	x."StringValue" IS NOT NULL

