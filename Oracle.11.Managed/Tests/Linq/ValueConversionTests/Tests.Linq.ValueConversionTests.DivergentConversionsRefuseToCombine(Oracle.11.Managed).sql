-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Doubled Int32
SET     @Doubled = 20
DECLARE @Tripled Int32
SET     @Tripled = 30
DECLARE @Plain Int32
SET     @Plain = 10

INSERT INTO "DivergentConversionRow"
(
	"Id",
	"Doubled",
	"Tripled",
	"Plain"
)
VALUES
(
	:Id,
	:Doubled,
	:Tripled,
	:Plain
)

-- Oracle.11.Managed Oracle11
DECLARE @PlainValue Int32
SET     @PlainValue = 10

SELECT
	r."Doubled",
	r."Tripled",
	r."Plain",
	r."Doubled" + r."Doubled",
	r."Plain" + r."Plain",
	r."Doubled" + :PlainValue
FROM
	"DivergentConversionRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @Doubled Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	"DivergentConversionRow" r
WHERE
	r."Doubled" = :Doubled

