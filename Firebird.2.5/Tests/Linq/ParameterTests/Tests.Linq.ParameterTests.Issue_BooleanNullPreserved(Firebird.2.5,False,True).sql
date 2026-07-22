-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	CASE
		WHEN CAST(@value AS CHAR(1)) = '0' THEN '1'
		WHEN CAST(@value AS CHAR(1)) = '1' THEN '0'
		ELSE NULL
	END
)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

-- Firebird.2.5 Firebird
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Value" = '0' THEN '1'
		WHEN "t1"."Value" = '1' THEN '0'
		ELSE NULL
	END

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

UPDATE
	"TestBool" "r"
SET
	"Value" = CASE
		WHEN CAST(@value AS CHAR(1)) = '0' THEN '1'
		WHEN CAST(@value AS CHAR(1)) = '1' THEN '0'
		ELSE NULL
	END
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

