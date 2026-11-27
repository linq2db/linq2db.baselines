-- Firebird.5 Firebird4
DECLARE @value VarChar(1) -- String
SET     @value = 'c'
DECLARE @low VarChar(1) -- String
SET     @low = 'a'

SELECT
	"r"."Id"
FROM
	"BetweenParameterRow" "r"
WHERE
	CAST(@value AS VARCHAR(1)) BETWEEN @low AND "r"."Name"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @value VarChar(2) -- String
SET     @value = 'cc'
DECLARE @low VarChar(1) -- String
SET     @low = 'a'

SELECT
	"r"."Id"
FROM
	"BetweenParameterRow" "r"
WHERE
	CAST(@value AS VARCHAR(2)) BETWEEN @low AND "r"."Name"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @value Decimal(2, 1)
SET     @value = 2.5
DECLARE @low Decimal(1, 0)
SET     @low = 0

SELECT
	"r"."Id"
FROM
	"BetweenParameterRow" "r"
WHERE
	CAST(@value AS Decimal(2, 1)) BETWEEN @low AND "r"."Amount"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @value Decimal(5, 4)
SET     @value = 3.1251
DECLARE @low Decimal(1, 0)
SET     @low = 0

SELECT
	"r"."Id"
FROM
	"BetweenParameterRow" "r"
WHERE
	CAST(@value AS Decimal(5, 4)) BETWEEN @low AND "r"."Amount"
ORDER BY
	"r"."Id"

