-- Firebird.3 Firebird3
SELECT
	MAX(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.3 Firebird3
SELECT
	MIN(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.3 Firebird3
SELECT
	MAX(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.3 Firebird3
SELECT
	MIN(CASE
		WHEN "t1"."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.3 Firebird3
SELECT
	MAX(CASE
		WHEN CASE
			WHEN "t1"."Id" = 2 THEN TRUE
			ELSE "t1"."Id" > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

-- Firebird.3 Firebird3
SELECT
	MIN(CASE
		WHEN CASE
			WHEN "t1"."Id" = 2 THEN TRUE
			ELSE "t1"."Id" > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" "t1"

