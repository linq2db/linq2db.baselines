-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "NativeIdentity"
(
	"Field"
)

	SELECT 11 FROM DUAL  UNION ALL
	SELECT 12 FROM DUAL 

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

