-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @NValue NVarchar2 -- String
SET     @NValue = NULL
DECLARE @VValue Varchar2(7) -- String
SET     @VValue = 'varchar'

INSERT INTO "CoalesceCharsetTable"
(
	"Id",
	"NValue",
	"VValue"
)
VALUES
(
	:Id,
	:NValue,
	:VValue
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @NValue NVarchar2(8) -- String
SET     @NValue = 'nvarchar'
DECLARE @VValue Varchar2(7) -- String
SET     @VValue = 'varchar'

INSERT INTO "CoalesceCharsetTable"
(
	"Id",
	"NValue",
	"VValue"
)
VALUES
(
	:Id,
	:NValue,
	:VValue
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Coalesce(x."NValue", To_NChar(x."VValue"))
FROM
	"CoalesceCharsetTable" x
ORDER BY
	x."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Coalesce(x."NValue", To_NChar(x."VValue"))
FROM
	"CoalesceCharsetTable" x
ORDER BY
	x."Id"

