-- Oracle.11.Managed Oracle11
DECLARE @key Int32
SET     @key = 7

SELECT
	t."Id",
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			:key
		FROM SYS.DUAL
	))
FROM
	"WindowFunctionTestEntity" t

