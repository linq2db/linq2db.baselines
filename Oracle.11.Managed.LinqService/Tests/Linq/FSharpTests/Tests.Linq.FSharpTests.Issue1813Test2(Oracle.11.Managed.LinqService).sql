BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	m_1."Id",
	d."Id",
	d."Text"
FROM
	"Names" m_1
		INNER JOIN "Addresses" d ON m_1."Id" = d."Id"
ORDER BY
	m_1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	tupledArg."Id",
	tupledArg."Name"
FROM
	"Names" tupledArg
ORDER BY
	tupledArg."Id"

