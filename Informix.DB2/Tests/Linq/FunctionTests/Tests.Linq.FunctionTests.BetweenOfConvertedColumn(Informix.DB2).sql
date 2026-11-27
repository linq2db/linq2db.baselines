-- Informix.DB2 Informix
DECLARE @ConstantBounds VarChar(5) -- String
SET     @ConstantBounds = '00005'
DECLARE @ConstantBounds_1 VarChar(5) -- String
SET     @ConstantBounds_1 = '00050'
DECLARE @low VarChar(5) -- String
SET     @low = '00005'
DECLARE @high VarChar(5) -- String
SET     @high = '00050'
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @minimum BigInt(8) -- Int64
SET     @minimum = 5
DECLARE @maximum BigInt(8) -- Int64
SET     @maximum = 50
DECLARE @Padded VarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	r.Id,
	r.Padded BETWEEN @ConstantBounds::NVarChar(5) AND @ConstantBounds_1::NVarChar(5),
	r.Padded NOT BETWEEN @low::NVarChar(5) AND @high::NVarChar(5),
	@value::NVarChar(5) BETWEEN r.Low AND r.High,
	r.Elapsed BETWEEN @minimum::BigInt AND @maximum::BigInt
FROM
	BetweenConvertedRow r
WHERE
	r.Padded NOT BETWEEN @Padded AND @Padded_1

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Padded,
	t1.Low,
	t1.High,
	t1.Elapsed
FROM
	BetweenConvertedRow t1

-- Informix.DB2 Informix
DECLARE @InRange VarChar(5) -- String
SET     @InRange = '00001'
DECLARE @InRange_1 VarChar(5) -- String
SET     @InRange_1 = '00010'
DECLARE @Padded VarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	g_2.Key_1,
	g_2.InRange BETWEEN @InRange::NVarChar(5) AND @InRange_1::NVarChar(5)
FROM
	(
		SELECT
			g_1.Id as Key_1,
			MAX(g_1.Padded) as InRange
		FROM
			BetweenConvertedRow g_1
		GROUP BY
			g_1.Id
	) g_2
WHERE
	g_2.InRange NOT BETWEEN @Padded AND @Padded_1

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Padded,
	t1.Low,
	t1.High,
	t1.Elapsed
FROM
	BetweenConvertedRow t1

