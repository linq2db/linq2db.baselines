-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntValue Int32
SET     @IntValue = 42
DECLARE @StrValue NVarchar2(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "VOptionTable"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	:Id,
	:IntValue,
	:StrValue
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @StrValue NVarchar2 -- String
SET     @StrValue = NULL

INSERT INTO "VOptionTable"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	:Id,
	:IntValue,
	:StrValue
)

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"VOptionTable" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"VOptionTable" r
WHERE
	r."Id" = 2 AND ROWNUM <= 2

