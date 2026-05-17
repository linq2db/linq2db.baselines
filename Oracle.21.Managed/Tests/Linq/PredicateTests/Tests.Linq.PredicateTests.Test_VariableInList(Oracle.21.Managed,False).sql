-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:One IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Zero IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:OneN IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:ZeroN IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Null_1 Int32
SET     @Null_1 = NULL

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Null_1 IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:One IN (0, 1) OR :One IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:Zero IN (0, 1) OR :Zero IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:OneN IN (0, 1) OR :OneN IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:ZeroN IN (0, 1) OR :ZeroN IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Null_1 Int32
SET     @Null_1 = NULL

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:Null_1 IN (0, 1) OR :Null_1 IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:One NOT IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Zero NOT IN (0, 1)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:OneN NOT IN (0, 1) OR :OneN IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:ZeroN NOT IN (0, 1) OR :ZeroN IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Null_1 Int32
SET     @Null_1 = NULL

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:Null_1 NOT IN (0, 1) OR :Null_1 IS NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:One NOT IN (0, 1) AND :One IS NOT NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:Zero NOT IN (0, 1) AND :Zero IS NOT NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:OneN NOT IN (0, 1) AND :OneN IS NOT NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:ZeroN NOT IN (0, 1) AND :ZeroN IS NOT NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Null_1 Int32
SET     @Null_1 = NULL

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(:Null_1 NOT IN (0, 1) AND :Null_1 IS NOT NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

