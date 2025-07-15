BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = {11,12}

INSERT INTO "NativeIdentity" ("Field") VALUES (:p1)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

