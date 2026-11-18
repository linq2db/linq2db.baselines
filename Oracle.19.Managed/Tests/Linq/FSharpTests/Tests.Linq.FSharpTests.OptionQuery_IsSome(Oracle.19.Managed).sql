-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'a'
DECLARE @Age Int32
SET     @Age = 5

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2 -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = NULL

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Name Varchar2(1) -- String
SET     @Name = 'b'
DECLARE @Age Int32
SET     @Age = 7

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Id,
	:Name,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	x."Id",
	x."Name",
	x."Age"
FROM
	"OptRow" x
WHERE
	x."Name" IS NOT NULL

