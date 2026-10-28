-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value TimeStamp -- DateTime
SET     @Value = TIMESTAMP '2020-01-01 13:00:00.000000'

INSERT INTO "SchemaScopedConversionRow"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"SchemaScopedConversionRow" t1
FETCH NEXT 2 ROWS ONLY

