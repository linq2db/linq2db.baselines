BeforeExecute
-- Firebird.3 Firebird3

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

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."NAME1",
	"t1"."Name2",
	"t1"."NAME3",
	"t1"."_NAME4",
	"t1"."NAME 5"
FROM
	"CamelCaseName" "t1"

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"CamelCaseName" "t1"

