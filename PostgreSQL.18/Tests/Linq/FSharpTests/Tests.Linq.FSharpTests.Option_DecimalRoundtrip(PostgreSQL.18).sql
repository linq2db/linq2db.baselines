-- PostgreSQL.18 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Numeric(4, 2) -- Decimal
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

-- PostgreSQL.18 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Numeric -- Decimal
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

-- PostgreSQL.18 PostgreSQL13

SELECT
	r."Id",
	r."Value"
FROM
	"OptionDecimalTable" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.18 PostgreSQL13

SELECT
	r."Id",
	r."Value"
FROM
	"OptionDecimalTable" r
WHERE
	r."Id" = 2
LIMIT 2

