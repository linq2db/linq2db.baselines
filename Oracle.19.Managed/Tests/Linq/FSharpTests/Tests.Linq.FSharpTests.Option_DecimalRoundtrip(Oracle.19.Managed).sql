-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Decimal(4, 2)
SET     @Value = 12.34

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value" as "Value_1"
FROM
	"OptionDecimalTable" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value" as "Value_1"
FROM
	"OptionDecimalTable" r
WHERE
	r."Id" = 2
FETCH NEXT 2 ROWS ONLY

