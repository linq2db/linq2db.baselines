-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntValue Int32
SET     @IntValue = 42
DECLARE @StrValue Varchar2(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "Issue4646Table"
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
DECLARE @StrValue Varchar2 -- String
SET     @StrValue = NULL

INSERT INTO "Issue4646Table"
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
	"Issue4646Table" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"Issue4646Table" r
WHERE
	r."Id" = 2 AND ROWNUM <= 2

