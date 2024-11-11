BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:SmallIntValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes" t
SET
	"MoneyValue" = 2000,
	CAST(t."SmallIntValue" AS Int) = 200
WHERE
	t.ID = :ID

