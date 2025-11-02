-- Firebird.2.5 Firebird

INSERT INTO "CamelCaseName"
(
	"Id",
	"NAME1",
	"Name2",
	"NAME3",
	"_NAME4",
	"NAME 5"
)
VALUES
(
	1,
	'name1',
	'name2',
	'name3',
	'name4',
	'name5'
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."NAME1",
	"t1"."Name2",
	"t1"."NAME3",
	"t1"."_NAME4",
	"t1"."NAME 5"
FROM
	"CamelCaseName" "t1"

-- Firebird.2.5 Firebird

DELETE FROM
	"CamelCaseName" "t1"

