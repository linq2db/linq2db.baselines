-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'a'

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2 -- String
SET     @Name = NULL

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id",
	x."Name"
FROM
	"VOptRow" x
WHERE
	x."Name" IS NULL

