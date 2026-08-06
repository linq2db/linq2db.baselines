-- YDB Ydb
DECLARE $id Int32
SET     $id = 3

$CTE_1 = 	SELECT
		t1.ID as ID
	FROM
		LinqDataTypes t1
	WHERE
		t1.ID = $id
;

SELECT
	t2.ID as ID,
	t2.MoneyValue as MoneyValue,
	t2.DateTimeValue as DateTimeValue,
	t2.DateTimeValue2 as DateTimeValue2,
	t2.BoolValue as BoolValue,
	t2.GuidValue as GuidValue,
	t2.SmallIntValue as SmallIntValue,
	t2.IntValue as IntValue,
	t2.BigIntValue as BigIntValue,
	t2.StringValue as StringValue
FROM
	LinqDataTypes t2
WHERE
	t2.ID IN (
		SELECT
			t3.ID
		FROM
			$CTE_1 t3
	)

-- YDB Ydb
DECLARE $id Int32
SET     $id = 4

$CTE_1 = 	SELECT
		t1.ID as ID
	FROM
		LinqDataTypes t1
	WHERE
		t1.ID = $id
;

SELECT
	t2.ID as ID,
	t2.MoneyValue as MoneyValue,
	t2.DateTimeValue as DateTimeValue,
	t2.DateTimeValue2 as DateTimeValue2,
	t2.BoolValue as BoolValue,
	t2.GuidValue as GuidValue,
	t2.SmallIntValue as SmallIntValue,
	t2.IntValue as IntValue,
	t2.BigIntValue as BigIntValue,
	t2.StringValue as StringValue
FROM
	LinqDataTypes t2
WHERE
	t2.ID IN (
		SELECT
			t3.ID
		FROM
			$CTE_1 t3
	)

