-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 42

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Int32
SET     @Value = NULL

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value" as "Value_1"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value" as "Value_1"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 2
FETCH NEXT 2 ROWS ONLY

