﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OptimizationData

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS OptimizationData
(
	Id                  Int           NOT NULL,
	IntVlaue            Int           NOT NULL,
	IntVlaueNullable    Int               NULL,
	BoolValue           BOOLEAN       NOT NULL,
	BoolValueNullable   BOOLEAN           NULL,
	StringValue         NVarChar(255)     NULL,
	StringValueNullable NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 't'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 2
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @BoolValueNullable SmallInt -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 4
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @BoolValueNullable SmallInt -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 0
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 't'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable VarChar -- String
SET     @StringValueNullable = NULL

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 3
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 't'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable VarChar -- String
SET     @StringValueNullable = NULL

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 'f'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 'f'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 8
DECLARE @IntVlaue Integer(4) -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Integer(4) -- Int32
SET     @IntVlaueNullable = 2
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @BoolValueNullable Char(1) -- StringFixedLength
SET     @BoolValueNullable = 't'
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable VarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO OptimizationData
(
	Id,
	IntVlaue,
	IntVlaueNullable,
	BoolValue,
	BoolValueNullable,
	StringValue,
	StringValueNullable
)
VALUES
(
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue == 1 ? 3 : 4 == 3 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue == 1 ? 3 : 4 == 3) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.IntVlaue <> 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 3 == swap.IntVlaue == 1 ? 3 : 4 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(3 == swap_with_not.IntVlaue == 1 ? 3 : 4) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.IntVlaue <> 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue == 1 ? null : (bool?)False == (bool?)True */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)False == (bool?)True) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)False */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)False) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue == 1 ? null : (bool?)True == (bool?)True */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <> 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.IntVlaue = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)True */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue <> 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)True) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.IntVlaue = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.BoolValue ? True : False == True */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.BoolValue = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.BoolValue ? True : False == True) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => True == swap.BoolValue ? True : False */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.BoolValue = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(True == swap_with_not.BoolValue ? True : False) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.BoolValue == True ? null : (bool?)True == (bool?)True */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	NOT x.BoolValue

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.BoolValue == True ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => (bool?)True == swap.BoolValue == True ? null : (bool?)True */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	NOT swap.BoolValue

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !((bool?)True == swap_with_not.BoolValue == True ? null : (bool?)True) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.BoolValue == True ? True : False == True */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.BoolValue = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.BoolValue == True ? True : False == True) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.BoolValue = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => True == swap.BoolValue == True ? True : False */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.BoolValue = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(True == swap_with_not.BoolValue == True ? True : False) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.BoolValue <> 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 == 2 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NOT NULL AND x.StringValueNullable IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 == 2) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.StringValueNullable IS NOT NULL AND x_with_not.StringValueNullable IS NOT NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 2 == swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NOT NULL AND swap.StringValueNullable IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.StringValueNullable IS NOT NULL AND swap_with_not.StringValueNullable IS NOT NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 == 2 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 == 2) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	x_with_not.StringValueNullable IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 2 == swap.StringValueNullable == null ? 2 : swap.StringValueNullable != null ? 1 : 3 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 2 : swap_with_not.StringValueNullable != null ? 1 : 3) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	swap_with_not.StringValueNullable IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 3 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 3) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 >= 1 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 >= 1) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 1 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL OR x.StringValueNullable IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 1) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.StringValueNullable IS NULL OR x_with_not.StringValueNullable IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 != 2 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.StringValueNullable IS NULL OR x.StringValueNullable IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 != 2) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.StringValueNullable IS NULL OR x_with_not.StringValueNullable IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 2 != swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.StringValueNullable IS NULL OR swap.StringValueNullable IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(2 != swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.StringValueNullable IS NULL OR swap_with_not.StringValueNullable IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.StringValueNullable != null ? x.StringValueNullable == "2" ? 2 : 10 : x.StringValueNullable == null ? 3 : 1 == 2 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	CASE
		WHEN x.StringValueNullable IS NOT NULL THEN CASE
			WHEN x.StringValueNullable = '2' THEN 2
			ELSE 10
		END
		WHEN x.StringValueNullable IS NULL THEN 3
		ELSE 1
	END = 2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.StringValueNullable != null ? x_with_not.StringValueNullable == "2" ? 2 : 10 : x_with_not.StringValueNullable == null ? 3 : 1 == 2) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	CASE
		WHEN x_with_not.StringValueNullable IS NOT NULL THEN CASE
			WHEN x_with_not.StringValueNullable = '2' THEN 2
			ELSE 10
		END
		WHEN x_with_not.StringValueNullable IS NULL THEN 3
		ELSE 1
	END <> 2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 2 == swap.StringValueNullable != null ? swap.StringValueNullable == "2" ? 2 : 10 : swap.StringValueNullable == null ? 3 : 1 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	2 = CASE
		WHEN swap.StringValueNullable IS NOT NULL THEN CASE
			WHEN swap.StringValueNullable = '2' THEN 2
			ELSE 10
		END
		WHEN swap.StringValueNullable IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(2 == swap_with_not.StringValueNullable != null ? swap_with_not.StringValueNullable == "2" ? 2 : 10 : swap_with_not.StringValueNullable == null ? 3 : 1) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	2 <> CASE
		WHEN swap_with_not.StringValueNullable IS NOT NULL THEN CASE
			WHEN swap_with_not.StringValueNullable = '2' THEN 2
			ELSE 10
		END
		WHEN swap_with_not.StringValueNullable IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue == 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue != 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue <> 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue != 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue <> 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 0 != swap.IntVlaue < 4 ? 4 : swap.IntVlaue */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue < 4 OR swap.IntVlaue <> 0 AND swap.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(0 != swap_with_not.IntVlaue < 4 ? 4 : swap_with_not.IntVlaue) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue < 4 OR swap_with_not.IntVlaue <> 0 AND swap_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue > 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue > 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue > 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue > 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue < 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue < 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue >= 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 4 OR x.IntVlaue >= 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue >= 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 4 OR x_with_not.IntVlaue >= 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue <= 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <= 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue <= 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <= 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 == 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue = 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 == 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue = 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 0 == swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue = 0 AND swap.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(0 == swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue = 0 AND swap_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 != 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <> 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 != 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <> 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap => 0 != swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
SELECT
	swap.Id,
	swap.IntVlaue,
	swap.IntVlaueNullable,
	swap.BoolValue,
	swap.BoolValueNullable,
	swap.StringValue,
	swap.StringValueNullable
FROM
	OptimizationData swap
WHERE
	swap.IntVlaue <> 0 AND swap.IntVlaue >= 4 OR swap.IntVlaue < 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* swap_with_not => !(0 != swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
SELECT
	swap_with_not.Id,
	swap_with_not.IntVlaue,
	swap_with_not.IntVlaueNullable,
	swap_with_not.BoolValue,
	swap_with_not.BoolValueNullable,
	swap_with_not.StringValue,
	swap_with_not.StringValueNullable
FROM
	OptimizationData swap_with_not
WHERE
	NOT (swap_with_not.IntVlaue <> 0 AND swap_with_not.IntVlaue >= 4 OR swap_with_not.IntVlaue < 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 > 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue > 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 > 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue > 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 < 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue < 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 < 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue < 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 >= 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue >= 0 AND x.IntVlaue >= 4 OR x.IntVlaue < 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 >= 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue >= 0 AND x_with_not.IntVlaue >= 4 OR x_with_not.IntVlaue < 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 <= 0 */
SELECT
	x.Id,
	x.IntVlaue,
	x.IntVlaueNullable,
	x.BoolValue,
	x.BoolValueNullable,
	x.StringValue,
	x.StringValueNullable
FROM
	OptimizationData x
WHERE
	x.IntVlaue <= 0 AND x.IntVlaue >= 4

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 <= 0) */
SELECT
	x_with_not.Id,
	x_with_not.IntVlaue,
	x_with_not.IntVlaueNullable,
	x_with_not.BoolValue,
	x_with_not.BoolValueNullable,
	x_with_not.StringValue,
	x_with_not.StringValueNullable
FROM
	OptimizationData x_with_not
WHERE
	NOT (x_with_not.IntVlaue <= 0 AND x_with_not.IntVlaue >= 4)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntVlaue,
	t1.IntVlaueNullable,
	t1.BoolValue,
	t1.BoolValueNullable,
	t1.StringValue,
	t1.StringValueNullable
FROM
	OptimizationData t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OptimizationData

