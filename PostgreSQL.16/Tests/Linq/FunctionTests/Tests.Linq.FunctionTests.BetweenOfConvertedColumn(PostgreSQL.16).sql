-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @ConstantBounds Text(5) -- String
SET     @ConstantBounds = '00005'
DECLARE @ConstantBounds_1 Text(5) -- String
SET     @ConstantBounds_1 = '00050'
DECLARE @low Text(5) -- String
SET     @low = '00005'
DECLARE @high Text(5) -- String
SET     @high = '00050'
DECLARE @value Text(5) -- String
SET     @value = '00042'
DECLARE @minimum Bigint -- Int64
SET     @minimum = 5
DECLARE @maximum Bigint -- Int64
SET     @maximum = 50
DECLARE @Padded Text(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 Text(5) -- String
SET     @Padded_1 = '00200'

SELECT
	r."Id",
	r."Padded" BETWEEN :ConstantBounds AND :ConstantBounds_1,
	r."Padded" NOT BETWEEN :low AND :high,
	:value BETWEEN r."Low" AND r."High",
	r."Elapsed" BETWEEN :minimum AND :maximum
FROM
	"BetweenConvertedRow" r
WHERE
	r."Padded" NOT BETWEEN :Padded AND :Padded_1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Padded",
	t1."Low",
	t1."High",
	t1."Elapsed"
FROM
	"BetweenConvertedRow" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @InRange Text(5) -- String
SET     @InRange = '00001'
DECLARE @InRange_1 Text(5) -- String
SET     @InRange_1 = '00010'
DECLARE @Padded Text(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 Text(5) -- String
SET     @Padded_1 = '00200'

SELECT
	g_2."Key_1",
	g_2."InRange" BETWEEN :InRange AND :InRange_1
FROM
	(
		SELECT
			g_1."Id" as "Key_1",
			MAX(g_1."Padded") as "InRange"
		FROM
			"BetweenConvertedRow" g_1
		GROUP BY
			g_1."Id"
	) g_2
WHERE
	g_2."InRange" NOT BETWEEN :Padded AND :Padded_1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Padded",
	t1."Low",
	t1."High",
	t1."Elapsed"
FROM
	"BetweenConvertedRow" t1

