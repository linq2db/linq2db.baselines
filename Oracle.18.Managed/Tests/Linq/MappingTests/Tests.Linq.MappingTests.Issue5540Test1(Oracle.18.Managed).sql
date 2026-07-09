-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Items NVarchar2(3) -- String
SET     @Items = 'A;B'

INSERT INTO "Issue5540"
(
	"Id",
	"Items"
)
VALUES
(
	:Id,
	:Items
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Items"
FROM
	"Issue5540" t1

