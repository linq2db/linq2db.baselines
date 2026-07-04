-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Value"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Value"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 2 AND ROWNUM <= 2

