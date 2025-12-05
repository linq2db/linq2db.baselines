-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Field Int32
SET     @Field = 11

INSERT INTO "NativeIdentity"
(
	"Field"
)
VALUES
(
	:Field
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Field Int32
SET     @Field = 12

INSERT INTO "NativeIdentity"
(
	"Field"
)
VALUES
(
	:Field
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

