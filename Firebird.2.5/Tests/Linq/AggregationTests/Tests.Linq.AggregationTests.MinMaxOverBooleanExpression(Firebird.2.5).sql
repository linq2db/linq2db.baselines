-- Firebird.2.5 Firebird
SELECT
	MAX(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird
SELECT
	MIN(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird
SELECT
	MAX(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird
SELECT
	MIN(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird
SELECT
	MAX(CASE
		WHEN "t1"."Id" = 2 OR "t1"."Id" > 1 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird
SELECT
	MIN(CASE
		WHEN "t1"."Id" = 2 OR "t1"."Id" > 1 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

