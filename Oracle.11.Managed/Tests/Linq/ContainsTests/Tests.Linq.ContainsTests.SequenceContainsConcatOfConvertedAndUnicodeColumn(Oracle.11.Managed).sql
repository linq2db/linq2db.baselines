-- Oracle.11.Managed Oracle11
SELECT
	t."Code" || t."Title"
FROM
	"PrefixedCodeWithTitle" t
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
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

