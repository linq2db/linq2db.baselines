-- Firebird.2.5 Firebird
MERGE INTO "InheritanceFilter" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Child1Field" = 66
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Code",
		"Child1Field"
	)
	VALUES
	(
		1,
		1,
		55
	)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)

-- Firebird.2.5 Firebird
MERGE INTO "InheritanceFilter" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Child1Field" = 66
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Code",
		"Child1Field"
	)
	VALUES
	(
		1,
		1,
		55
	)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)

