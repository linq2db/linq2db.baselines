﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

BeforeExecute
--  Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 15

SELECT
	e.ID,
	p.SmallIntValue
FROM
	(
		SELECT FIRST @take
			t3.ID
		FROM
			(
				SELECT
					t1.ID
				FROM
					LinqDataTypes t1
				UNION ALL
				SELECT
					t2.ID
				FROM
					LinqDataTypes t2
			) t3
	) e
		LEFT JOIN (
			SELECT FIRST @take
				t6.ID,
				t6.SmallIntValue
			FROM
				(
					SELECT
						t4.ID,
						t4.SmallIntValue
					FROM
						LinqDataTypes t4
					UNION ALL
					SELECT
						t5.ID,
						t5.SmallIntValue
					FROM
						LinqDataTypes t5
				) t6
		) p ON p.ID = e.ID
ORDER BY
	e.ID,
	p.ID

