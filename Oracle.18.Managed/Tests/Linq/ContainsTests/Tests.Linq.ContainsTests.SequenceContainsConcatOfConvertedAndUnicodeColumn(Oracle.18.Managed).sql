-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Code" || t."Title" as "c1"
FROM
	"PrefixedCodeWithTitle" t
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(4) -- String
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN :Code IN (
			SELECT
				t."Code" || t."Title"
			FROM
				"PrefixedCodeWithTitle" t
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

