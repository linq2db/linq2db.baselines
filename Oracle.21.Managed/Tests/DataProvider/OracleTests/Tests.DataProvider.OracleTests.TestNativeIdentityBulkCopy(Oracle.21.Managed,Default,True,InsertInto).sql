BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = {4,8}
DECLARE @:p2 Int32
SET     @:p2 = {11,12}

INSERT INTO "NativeIdentity" ("Id", "Field") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

