-- Oracle.18.Managed Oracle.Managed Oracle12
UPDATE
	"TestBool" t1
SET
	"Value" = CASE
		WHEN t1."Id" > 0 THEN CASE
			WHEN t1."Value" = 0 OR t1."Value" IS NULL THEN 1
			ELSE 0
		END
		ELSE NULL
	END

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

