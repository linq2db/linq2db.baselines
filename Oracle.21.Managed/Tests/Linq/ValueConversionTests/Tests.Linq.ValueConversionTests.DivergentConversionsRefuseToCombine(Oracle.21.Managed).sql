-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @PlainValue Int32
SET     @PlainValue = 10

SELECT
	r."Doubled",
	r."Tripled",
	r."Plain",
	r."Doubled" + r."Doubled" as "SameColumn",
	r."Plain" + r."Plain" as "NoConverter",
	r."Doubled" + :PlainValue as "PlainValue"
FROM
	"DivergentConversionRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Doubled Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	"DivergentConversionRow" r
WHERE
	r."Doubled" = :Doubled

