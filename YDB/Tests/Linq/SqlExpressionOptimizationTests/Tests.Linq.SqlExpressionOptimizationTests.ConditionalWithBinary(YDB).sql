-- YDB Ydb

/* x => x.IntVlaue == 1 ? 3 : 4 == 3 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue == 1 ? 3 : 4 == 3) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.IntVlaue <> 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 3 == swap.IntVlaue == 1 ? 3 : 4 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(3 == swap_with_not.IntVlaue == 1 ? 3 : 4) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.IntVlaue <> 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue == 1 ? null : (bool?)False == (bool?)True */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	1 = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)False == (bool?)True) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)False */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	1 = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)False) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue == 1 ? null : (bool?)True == (bool?)True */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <> 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.IntVlaue = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)True */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue <> 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)True) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.IntVlaue = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.BoolValue ? True : False == True */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.BoolValue = true

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.BoolValue ? True : False == True) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue = false

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => True == swap.BoolValue ? True : False */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.BoolValue = true

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(True == swap_with_not.BoolValue ? True : False) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue = false

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.BoolValue == True ? null : (bool?)True == (bool?)True */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	NOT x.BoolValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.BoolValue == True ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => (bool?)True == swap.BoolValue == True ? null : (bool?)True */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	NOT swap.BoolValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !((bool?)True == swap_with_not.BoolValue == True ? null : (bool?)True) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.BoolValue == True ? True : False == True */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.BoolValue = true

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.BoolValue == True ? True : False == True) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue = false

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => True == swap.BoolValue == True ? True : False */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.BoolValue = true

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(True == swap_with_not.BoolValue == True ? True : False) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue = false

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 1 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 == 2 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 1 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 == 2) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 2 == swap.StringValueNullable ==   String.op_Equality(...)  null ? 1 : swap.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(2 == swap_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 1 : swap_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 == 2 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 == 2) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 2 == swap.StringValueNullable ==   String.op_Equality(...)  null ? 2 : swap.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(2 == swap_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 2 : swap_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 > 3 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	1 = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 > 3) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 >= 1 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 >= 1) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	1 = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 > 1 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 2 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 1 : 3 > 1) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable ==   String.op_Equality(...)  null ? 1 : x.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 != 2 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 1 : x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 != 2) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 2 != swap.StringValueNullable ==   String.op_Equality(...)  null ? 1 : swap.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(2 != swap_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 1 : swap_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? 2 : 3) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.StringValueNullable IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.StringValueNullable !=   String.op_Inequality(...)  null ? x.StringValueNullable ==   String.op_Equality(...)  "2" ? 2 : 10 : x.StringValueNullable ==   String.op_Equality(...)  null ? 3 : 1 == 2 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	CASE
		WHEN x.StringValueNullable IS NOT NULL THEN CASE
			WHEN x.StringValueNullable = '2'u THEN 2
			ELSE 10
		END
		WHEN x.StringValueNullable IS NULL THEN 3
		ELSE 1
	END = 2

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? x_with_not.StringValueNullable ==   String.op_Equality(...)  "2" ? 2 : 10 : x_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 3 : 1 == 2) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	CASE
		WHEN x_with_not.StringValueNullable IS NOT NULL THEN CASE
			WHEN x_with_not.StringValueNullable = '2'u THEN 2
			ELSE 10
		END
		WHEN x_with_not.StringValueNullable IS NULL THEN 3
		ELSE 1
	END <> 2

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 2 == swap.StringValueNullable !=   String.op_Inequality(...)  null ? swap.StringValueNullable ==   String.op_Equality(...)  "2" ? 2 : 10 : swap.StringValueNullable ==   String.op_Equality(...)  null ? 3 : 1 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	2 = CASE
		WHEN swap.StringValueNullable IS NOT NULL THEN CASE
			WHEN swap.StringValueNullable = '2'u THEN 2
			ELSE 10
		END
		WHEN swap.StringValueNullable IS NULL THEN 3
		ELSE 1
	END

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(2 == swap_with_not.StringValueNullable !=   String.op_Inequality(...)  null ? swap_with_not.StringValueNullable ==   String.op_Equality(...)  "2" ? 2 : 10 : swap_with_not.StringValueNullable ==   String.op_Equality(...)  null ? 3 : 1) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	2 <> CASE
		WHEN swap_with_not.StringValueNullable IS NOT NULL THEN CASE
			WHEN swap_with_not.StringValueNullable = '2'u THEN 2
			ELSE 10
		END
		WHEN swap_with_not.StringValueNullable IS NULL THEN 3
		ELSE 1
	END

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue == 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue != 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue <> 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue != 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue <> 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 0 != swap.IntVlaue < 4 ? 4 : swap.IntVlaue */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue < 4 OR swap.IntVlaue <> 0 AND swap.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(0 != swap_with_not.IntVlaue < 4 ? 4 : swap_with_not.IntVlaue) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue < 4 OR swap_with_not.IntVlaue <> 0 AND swap_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue > 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue > 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue > 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue > 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue < 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue < 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue >= 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue >= 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue >= 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue >= 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue <= 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <= 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue <= 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <= 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 == 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 == 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue = 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 0 == swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue = 0 AND swap.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(0 == swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue = 0 AND swap_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 != 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <> 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 != 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <> 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap => 0 != swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
SELECT
	swap.Id as Id,
	swap.IntVlaue as IntVlaue,
	swap.IntVlaueNullable as IntVlaueNullable,
	swap.BoolValue as BoolValue,
	swap.BoolValueNullable as BoolValueNullable,
	swap.StringValue as StringValue,
	swap.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue <> 0 AND swap.IntVlaue >= 4 OR swap.IntVlaue < 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* swap_with_not => !(0 != swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
SELECT
	swap_with_not.Id as Id,
	swap_with_not.IntVlaue as IntVlaue,
	swap_with_not.IntVlaueNullable as IntVlaueNullable,
	swap_with_not.BoolValue as BoolValue,
	swap_with_not.BoolValueNullable as BoolValueNullable,
	swap_with_not.StringValue as StringValue,
	swap_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue <> 0 AND swap_with_not.IntVlaue >= 4 OR swap_with_not.IntVlaue < 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 > 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue > 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 > 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue > 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 < 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 < 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 >= 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue >= 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 >= 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue >= 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 <= 0 */
SELECT
	x.Id as Id,
	x.IntVlaue as IntVlaue,
	x.IntVlaueNullable as IntVlaueNullable,
	x.BoolValue as BoolValue,
	x.BoolValueNullable as BoolValueNullable,
	x.StringValue as StringValue,
	x.StringValueNullable as StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <= 0 AND x.IntVlaue >= 4

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

-- YDB Ydb

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 <= 0) */
SELECT
	x_with_not.Id as Id,
	x_with_not.IntVlaue as IntVlaue,
	x_with_not.IntVlaueNullable as IntVlaueNullable,
	x_with_not.BoolValue as BoolValue,
	x_with_not.BoolValueNullable as BoolValueNullable,
	x_with_not.StringValue as StringValue,
	x_with_not.StringValueNullable as StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <= 0 AND x_with_not.IntVlaue >= 4)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntVlaue as IntVlaue,
	t1.IntVlaueNullable as IntVlaueNullable,
	t1.BoolValue as BoolValue,
	t1.BoolValueNullable as BoolValueNullable,
	t1.StringValue as StringValue,
	t1.StringValueNullable as StringValueNullable
FROM
	OptimizationData t1

