-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text Varchar2(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	after_1."Id",
	after_1."Name",
	arg2."Id",
	arg2."Text"
FROM
	"Names" after_1
		LEFT JOIN "Addresses" arg2 ON after_1."Id" = arg2."Id"
ORDER BY
	after_1."Id"

