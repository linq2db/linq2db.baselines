BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "NativeIdentity"
(
	"Id",
	"Field"
)

	SELECT 4,11 FROM DUAL  UNION ALL
	SELECT 8,12 FROM DUAL 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

